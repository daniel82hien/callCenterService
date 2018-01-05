package net.java.account.web;

import net.java.account.model.Customer;
import net.java.account.model.User;
import net.java.account.service.CustomerServiceImpl;
import net.java.account.service.SecurityService;
import net.java.account.service.UserService;
import net.java.account.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;

@Controller
@SessionAttributes("sessionCustomer")
public class CustomerController {
    @Autowired
    private UserService userService;
    
    @Autowired
    private CustomerServiceImpl customerServiceImpl;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "frontend/registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)    
    public String registration(@ModelAttribute("customerForm") Customer customerForm, BindingResult bindingResult, Model model) {
    	customerServiceImpl.save(customerForm);    	
        return "redirect:/welcome";
    }

    @RequestMapping(value = "/log", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null) {
        	if(error == "1")
        		model.addAttribute("error", "Please enter phone or email to login!");
        	else
        		model.addAttribute("error", "Your phone or email is not yet register. Please register it first!");
        }

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "frontend/login";
    }
    
    @RequestMapping(value = "/join", method = RequestMethod.POST)
    public String login(@ModelAttribute("customerForm") Customer customerForm, BindingResult bindingResult, Model model) {
    	try {    		
	    	String phone = customerForm.getPhone();
	    	String email = customerForm.getEmail();
	    	if(phone.isEmpty() && email.isEmpty())
	    		return "redirect:/log?error=1";
	    	
	    	Customer customer = null;
	    	if(!phone.isEmpty())
	    		customer = customerServiceImpl.findByPhone(phone);
	    	else if(!email.isEmpty())
	    		customer = customerServiceImpl.findByEmail(email);
	    	
	    	if(customer != null) {	    		
	    		model.addAttribute("sessionCustomer", customer.getName());
	    		return "redirect:/appointment";
	    	}else { 
	    		return "redirect:/add";
	    	}
    	}catch(Exception ex) {
    		return "redirect:/log";
    	}
    }

    @RequestMapping(value = {"/welcome"}, method = RequestMethod.GET)
    public String welcome(Model model) {
        return "frontend/welcome";
    }
    
    @RequestMapping(value = {"/home", "/"}, method = RequestMethod.GET)
    public String home(Model model) {
        return "frontend/home";
    }
    
    @RequestMapping(value = {"/test"}, method = RequestMethod.GET)
    public String test(Model model) {
        return "test";
    }
    
    @RequestMapping(value = {"/add"}, method = RequestMethod.GET)
    public String add(Model model, HttpSession session) {    	
        return "frontend/add";
    }
    
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(@ModelAttribute("customerForm") Customer customerForm, BindingResult bindingResult, Model model) {
    	try {
	    	String phone 	= customerForm.getPhone();
	    	String email 	= customerForm.getEmail();
	    	String name 	= customerForm.getName();
	    	String password	= customerForm.getPassword();
	    	String month 	= customerForm.getMonth();
	    	String year		= customerForm.getYear();
	    	
	    	if(phone.isEmpty() && email.isEmpty())
	    		return "redirect:/add";
	    	
	    	Customer customer = new Customer();
	    	customer.setPhone(phone);
	    	customer.setEmail(email);
	    	customer.setName(name);
	    	customer.setPassword(password);
	    	customer.setMonth(month);
	    	customer.setYear(year);
	    	customerServiceImpl.save(customer);
	    	
	    	model.addAttribute("sessionCustomer", name);
	    	return "redirect:/appointment";
    	}catch(Exception ex) {
    		return "redirect:/add";
    	}
    }
    
    @RequestMapping(value = {"/appointment"}, method = RequestMethod.GET)
    public String appointment(Model model, HttpSession session) {    
    	try {
    	String sessionCustomer = session.getAttribute("sessionCustomer").toString();
	    	if(sessionCustomer != "" && !sessionCustomer.isEmpty())
	    		return "frontend/appointment";
	    	else
	    		return "redirect:/log";
    	}catch(Exception ex) {
    		return "redirect:/log";
    	}
    }
    
    @RequestMapping(value = {"/award"}, method = RequestMethod.GET)
    public String award(Model model) {
        return "frontend/award";
    }
    
    @RequestMapping(value = {"/contact"}, method = RequestMethod.GET)
    public String contact(Model model) {
        return "frontend/contact";
    }
    
    @RequestMapping(value = {"/service"}, method = RequestMethod.GET)
    public String service(Model model) {
        return "frontend/service";
    }
    
    @RequestMapping(value = {"/logout"}, method = RequestMethod.GET)
    public String logout(Model model) {
    	model.addAttribute("sessionCustomer", "");
        return "redirect:/";
    }
}
