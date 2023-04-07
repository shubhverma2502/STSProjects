package com.shubh;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeRepo empRepo;
	
	@RequestMapping("/")
	public String home()
	{
		return "reg";
	}
	
	@RequestMapping("/empsave")
	public String empSave(@RequestParam Integer id,@RequestParam String name,
			@RequestParam String password,@RequestParam String email,@RequestParam String mobileno,
			@RequestParam String address,Employee emp, Model m)
	{	
	Employee e1 = empRepo.save(emp);
	   {
	       return "success";
	   }
	
	}
	
    @RequestMapping("/getAll")    
    public String viewemp(Model model)
    {    
        model.addAttribute("emps",empRepo.findAll());
        return "viewall";   
    }
   
    @RequestMapping(value="/delete/{id}")    
    public String delete(@PathVariable Integer id){    
    	empRepo.deleteById(id); 
    	{
        return "redirect:/viewemp";   
    	}
    	
    }
        
     @RequestMapping(value="/edit",method = RequestMethod.POST)    
	 public String editsave(@RequestParam Integer id,@RequestParam String name,
			 @RequestParam String password,@RequestParam String email,@RequestParam String mobileno,
			 @RequestParam String address,Employee emp,Model model)
     {    
	     empRepo.save(emp); 
	     {
	        return "redirect:/viewemp";    
	     }
		
	}
    @RequestMapping(value="/update/{id}")
    public String edit(@PathVariable Integer id,Model m)
    {
    	Employee emp = empRepo.findById(id).get();
    	m.addAttribute("command",emp);
    	return "update";
    }
}













