package org.itsci.project.controller;


import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.itsci.project.model.Project;
import org.itsci.project.model.Projectchapter;
import org.itsci.project.service.ProjectChapterService;
import org.itsci.project.service.ProjectService;
import org.itsci.project.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/projectchapter")
public class ProjectChapterController {
    @Autowired
    private StudentService studentService;

    @Autowired
    private ProjectService projectService;

    @Autowired
    private ProjectChapterService projectChapterService;

    private static final long serialVersionUID = 1L;

    @RequestMapping (value = "/{id}/uploadDocuments" , method = RequestMethod.POST)
    public String uploadDocuments(@PathVariable("id") String id, Model model, HttpServletRequest request, HttpSession session) throws ServletException, IOException {
        Date rightNow = Calendar.getInstance().getTime();
        Project project = projectService.getProject(id);
        String file = "";
        String fileType = (String) session.getAttribute("fileType");
        System.out.println(fileType);
        String str = projectChapterService.getMaxId();
        file = uploadFile(request,str);
        System.out.println("File : " + file + " :  " +
                fileType + " : "+ rightNow + " : " + project.getThaiproject_name());
        Projectchapter projectchapter = new Projectchapter("F00"+str,file,fileType,rightNow,"YES",project);
        projectChapterService.saveProjectChapter(projectchapter);
        return "redirect:/project/"+project.getStudent().getStudent_id()+"/list";
    }

//    @RequestMapping( value = "/{id}/uploadDocuments",method = RequestMethod.POST)
    public String uploadFile(HttpServletRequest request,String str) throws ServletException, IOException {
        String filename = "";
        if (ServletFileUpload.isMultipartContent(request)) {
            try {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {
                        String name = new File(str+item.getName()).getName();
                        item.write(new File("c:/test/" + File.separator + name  ));
                        filename = name;
                    }
                }
                // File uploaded successfully
                System.out.println("File Uploaded Successfully");
            } catch (Exception ex) {
                System.out.println( "File Upload Failed due to " + ex);
            }
        } else {

            System.out.println("No File found");
        }
        return filename;
    }

    @RequestMapping( value = "/{id}/updateDocuments",method = RequestMethod.POST)
    public String updateDocuments(@PathVariable("id") String id, Model model, HttpServletRequest request, HttpSession session) throws ServletException, IOException {
        Date rightNow = Calendar.getInstance().getTime();
        Projectchapter pc = projectChapterService.getProjectChapter(id);
        Project project = projectService.getProject(pc.getProject().getProject_id());
        String file = uploadFile(request,"U"+id);
        String fileType = pc.getFiletype();
        Projectchapter projectchapter = new Projectchapter(id,file,fileType,rightNow,"YES",project);
        projectChapterService.saveProjectChapter(projectchapter);
        return "redirect:/project/"+project.getStudent().getStudent_id()+"/list";
    }

    @GetMapping( "/{id}/deleteFile")
    public String deleteFile(@PathVariable("id") String id, Model model, HttpServletRequest request, HttpSession session) {
        Projectchapter pc = projectChapterService.getProjectChapter(id);
        Project project = projectService.getProject(pc.getProject().getProject_id());
        projectChapterService.deleteProjectChapter(id);
        return "redirect:/project/"+project.getStudent().getStudent_id()+"/list";
    }
}
