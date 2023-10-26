package org.itsci.project.controller;

import org.itsci.project.model.Project;
import org.itsci.project.model.Student;
import org.itsci.project.service.ProjectService;
import org.itsci.project.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private ProjectService projectService;

    @GetMapping("/{id}/view")
    public String viewStudent(@PathVariable("id") String id, Model model) {
        Student student = studentService.getStudent(id);
//        Project project = projectService.getProject("P0001");
//        model.addAttribute("title", "ดู" + title);
        model.addAttribute("student", student);
        model.addAttribute("project", projectService.getProjectByCode(id));
        return "student/viewStudent";
    }

    @GetMapping("/{id}/update")
    public String updateStudent(@PathVariable("id") String id, Model model) {
        Student student = studentService.getStudent(id);
        model.addAttribute("student", student);
        model.addAttribute("project", projectService.getProjectByCode(id));
        return "student/editStudentProfile";
    }

    @GetMapping(path = "{id}/save")
    public String saveStudent(@PathVariable("id") String id, HttpServletRequest request,
                              Model model) {
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String job_description = request.getParameter("job_description");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");

        Student student = studentService.getStudent(id);
        student.setFirstname(firstname);
        student.setLastname(lastname);
        student.setJob_description(job_description);
        student.setPhone(phone);
        student.setPassword(password);
        studentService.saveStudent(student);
        return "redirect:/student/" + student.getStudent_id() + "/view";
    }

    @GetMapping("/{id}/approvedPerson")
    public String approvedPerson(@PathVariable("id") String id, Model model) {
        Student student = studentService.getStudent(id);
        model.addAttribute("student", student);
        model.addAttribute("project", projectService.getProjectByCode(id));
        return "advisor/approvedPerson";
    }


}
