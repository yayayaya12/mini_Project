package org.itsci.project.controller;


import org.itsci.project.model.Personnel;
import org.itsci.project.model.Student;
import org.itsci.project.service.PersonnelService;
import org.itsci.project.service.ProjectService;
import org.itsci.project.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class WebHomeController {
    @Autowired
    private StudentService studentService;

    @Autowired
    private ProjectService projectService;

    @Autowired
    private PersonnelService personnelService;

    @RequestMapping("/")
    public String showHome( Model model, HttpSession session) {
        Object check = session.getAttribute("login");
        if (check == null){
            session.setAttribute("login", "user");
        }

        Student student = studentService.getStudent("6304106307");
        model.addAttribute("student", student);
        model.addAttribute("projects", projectService.getProject());

        return "home";
    }

    @RequestMapping("/login")
    public String showLogin() {
        return "login";
    }

    @RequestMapping("/logout")
    public String doLogout(HttpSession session){
        session.removeAttribute("login");
        return "redirect:/";
    }
    @RequestMapping("/home")
    public String doLogin(Model model, HttpServletRequest request, HttpSession session) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username+ " : "+password);
        String check = username.substring(0,3);
        System.out.println(check);
        if(check.equals("MJU")){

            String str = username.substring(3);
            Student student = studentService.getStudent(str);
            session.setAttribute("login", "student");
            request.setAttribute("login_id", student.getStudent_id());
        }else {
            Personnel personnel = personnelService.getPersonnelByEmail(username);
            session.setAttribute("login", "personnel");
            request.setAttribute("login_id", personnel.getPersonnelid());
        }
        model.addAttribute("projects", projectService.getProject());
        return "home";
    }

    @RequestMapping("/update")
    public String Update() {
        return "abstract/updateAbstract";
    }

    @RequestMapping("/uploadDoc")
    public String uploadDoc() {
        return "project/uploadDocuments";
    }


    @RequestMapping("/list")
    public String listfile () { return "project/listFiles";}

    @RequestMapping("/import")
    public String importStudent() { return "admin/importStudentFile";}

    @RequestMapping("/editfile")
    public String edituploadfile() { return "project/editUploadFile";}

    @RequestMapping("/listProject")
    public String listProject() { return "advisor/listProject";}

    @RequestMapping("/viewfile")
    public String viewProject() { return "project/viewfile";}

    @RequestMapping("/approvedPerson")
    public String approvedPerson() { return "advisor/approvedPerson";}

    @RequestMapping("/search")
    public String searchProject() { return "searchProject";}
}