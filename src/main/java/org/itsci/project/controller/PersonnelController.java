package org.itsci.project.controller;

import org.itsci.project.model.Personnel;
import org.itsci.project.model.Project;
import org.itsci.project.model.Student;
import org.itsci.project.service.PersonnelService;
import org.itsci.project.service.ProjectService;
import org.itsci.project.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/advisor")
public class PersonnelController {


    @Autowired
    private StudentService studentService;

    @Autowired
    private ProjectService projectService;

    @Autowired
    private PersonnelService personnelService;

    @GetMapping("/{id}/list")
    public String viewListProject(@PathVariable("id") String id, Model model) {
        Personnel personnel = personnelService.getPersonnel(id);
        model.addAttribute("personnel", personnel);
        model.addAttribute("projects", projectService.getProjectByAdvisor(id));
        return "advisor/listProject";
    }

    @GetMapping("/{id}/listapprove")
    public String viewListApproveProject(@PathVariable("id") String id, Model model) {
        Personnel personnel = personnelService.getPersonnel(id);
        model.addAttribute("personnel", personnel);
        model.addAttribute("projects", projectService.getProjectByApprove(id));
        return "advisor/approvedPerson";
    }


    @GetMapping("/{id}/view")
    public String viewProject(@PathVariable("id") String id, Model model) {
        Student student = studentService.getStudent(id);
//        Project project = projectService.getProject("P0001");
//        model.addAttribute("title", "ดู" + title);
        model.addAttribute("student", student);
        model.addAttribute("project", projectService.getProjectByCode(id));
        return "advisor/viewProject";
    }

    @GetMapping( "/{id}/approve")
    public String UpDateAbstract(@PathVariable("id") String id) {
        long millis=System.currentTimeMillis();
        java.sql.Date date = new java.sql.Date(millis);
        Project project = projectService.getProjectByCode(id);
        project.setApprovestatus("YES");
        project.setApprove_date(date);
        projectService.saveProject(project);
        return "redirect:/advisor/"+project.getPersonnel().getPersonnelid()+"/listapprove";
    }

    @GetMapping("/{id}/ApproveVideo")
    public String approveDemoVideo(@PathVariable("id") String id, Model model) {
        Student student = studentService.getStudent(id);
//        Project project = projectService.getProject("P0001");
//        model.addAttribute("title", "ดู" + title);
        model.addAttribute("student", student);
        model.addAttribute("project", projectService.getProjectByCode(id));
        return "advisor/approveDemoVideo";
    }




}
