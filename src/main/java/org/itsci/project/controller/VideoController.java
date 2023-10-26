package org.itsci.project.controller;

import org.itsci.project.model.Project;
import org.itsci.project.model.Projectchapter;
import org.itsci.project.model.Student;
import org.itsci.project.model.Video;
import org.itsci.project.service.ProjectService;
import org.itsci.project.service.StudentService;
import org.itsci.project.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Calendar;
import java.util.Date;


@Controller
@RequestMapping("/video")
public class VideoController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private ProjectService projectService;

    @Autowired
    private VideoService videoService;
    @GetMapping("/{id}/upload")
    public String uploadVideo(@PathVariable("id") String id, Model model) {
        Project project = projectService.getProject(id);
        model.addAttribute("student", studentService.getStudent(project.getStudent().getStudent_id()));
        model.addAttribute("project", project);
        return "video/uploadVideo";
    }

    @GetMapping( "/{id}/uploadVideo")
    public String uploadDocuments(@PathVariable("id") String id, Model model, HttpServletRequest request) {
        Date rightNow = Calendar.getInstance().getTime();
        Project project = projectService.getProject(id);
        String file = request.getParameter("file");
        String str = videoService.getMaxId();
        Video video = new Video("V00"+str,file,rightNow,"NO",project);
        videoService.saveVideo(video);
        return "redirect:/project/"+project.getStudent().getStudent_id()+"/list";
    }
}
