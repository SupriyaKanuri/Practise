package com.excent.practise;





import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;




@Controller
public class maincontrollerpractise {
	
@RequestMapping("/form")
public String form()
{
	return "static/Registrationpractise.jsp";
}


@RequestMapping("/edit")
public String edit()
{
	return "static/Listpractise.jsp";
}
@RequestMapping("/update")
public String update()
{
	return "static/update.jsp";
}

@RequestMapping("/reg_save")
@ResponseBody
public String save(@RequestParam("first_name")String firstname,
		@RequestParam("last_name")String lastname,
		@RequestParam("email")String email,
		@RequestParam("gender")String gender,
		@RequestParam("user_name")String username,
		@RequestParam("user_password")String password) 
{
	
	System.out.println("IN controller");
	System.out.println(firstname);
	System.out.println(lastname);
	System.out.println(email);
	System.out.println(gender);
	System.out.println(username);
	System.out.println(password);
	
	practiseentity pe= new practiseentity(firstname,lastname,email,gender,username,password);
	perepo.save(pe);
	
return "Registred";	
}

@RequestMapping("/user_list")
@ResponseBody
public List<practiseentity> all() {
	return (List<practiseentity>) perepo.findAll();
}

@RequestMapping("/single_id")
@ResponseBody
public List<practiseentity> userpass(@RequestParam("id")long id){
	
	return (List<practiseentity>)perepo.findById(id);
}

@RequestMapping("/data_upadate")
@ResponseBody
public String update(@RequestParam("editid")long id,
		@RequestParam("first_name")String firstname,
		@RequestParam("last_name")String lastname,
		@RequestParam("email")String email,
		@RequestParam("optradio")String gender,
		@RequestParam("user_name")String username,
		@RequestParam("user_password")String password) 
{
	
	System.out.println("IN controller");
	System.out.println(id);
	System.out.println(firstname);
	System.out.println(lastname);
	System.out.println(email);
	System.out.println(gender);
	System.out.println(username);
	System.out.println(password);

	
	practiseentity up= perepo.findOne(id);
	up.setFirstname(firstname);
	up.setLastname(lastname);
	up.setEmail(email);
	up.setGender(gender);
	up.setUsername(username);
	up.setPassword(password);
	System.out.println("updated");
	perepo.save(up);
	
return "Updated";	
}

@RequestMapping("/data_delete")
@ResponseBody
public String delete(@RequestParam("id")long id){
	practiseentity delete= perepo.findOne(id);
	perepo.delete(id);
	
	return "delete";
}



@Autowired
private practiserepository perepo;

}
