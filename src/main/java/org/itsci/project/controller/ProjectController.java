package org.itsci.project.controller;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.hibernate.Session;
import org.itsci.project.dao.ProjectChapterDaoImpl;
import org.itsci.project.model.Project;
import org.itsci.project.model.Projectchapter;
import org.itsci.project.model.Student;
import org.itsci.project.service.ProjectChapterService;
import org.itsci.project.service.ProjectService;
import org.itsci.project.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/project")
public class ProjectController  {
    @Autowired
    private StudentService studentService;

    @Autowired
    private ProjectService projectService;

    @Autowired
    private ProjectChapterService projectChapterService;
    @GetMapping("/{id}/list")
    public String viewListProject(@PathVariable("id") String id, Model model) {
        Student student = studentService.getStudent(id);
//        Project project = projectService.getProject("P0001");
//        model.addAttribute("title", "ดู" + title);
        model.addAttribute("student", student);
        model.addAttribute("project", projectService.getProjectByCode(id));
        return "project/listfile";
    }

    @GetMapping("/{id}/uploadFileType1")
    public String uploadFileType1(@PathVariable("id") String id, Model model) {
//        Student student = studentService.getStudent(id);
        Project project = projectService.getProject(id);
        model.addAttribute("fileType","บทที่ 1");
        model.addAttribute("student", studentService.getStudent(project.getStudent().getStudent_id()));
        model.addAttribute("project", project);
        return "project/uploadDocuments";
    }

    @GetMapping("/{id}/uploadFileType2")
    public String uploadFileType2(@PathVariable("id") String id, Model model) {
//        Student student = studentService.getStudent(id);
        Project project = projectService.getProject(id);
        model.addAttribute("fileType","บทที่ 2");
        model.addAttribute("student", studentService.getStudent(project.getStudent().getStudent_id()));
        model.addAttribute("project", project);
        return "project/uploadDocuments";
    }

    @GetMapping("/{id}/uploadFileType3")
    public String uploadFileType3(@PathVariable("id") String id, Model model) {
//        Student student = studentService.getStudent(id);
        Project project = projectService.getProject(id);
        model.addAttribute("fileType","บทที่ 3");
        model.addAttribute("student", studentService.getStudent(project.getStudent().getStudent_id()));
        model.addAttribute("project", project);
        return "project/uploadDocuments";
    }

    @GetMapping("/{id}/uploadFileType4")
    public String uploadFileType4(@PathVariable("id") String id, Model model) {
//        Student student = studentService.getStudent(id);
        Project project = projectService.getProject(id);
        model.addAttribute("fileType","บทที่ 4");
        model.addAttribute("student", studentService.getStudent(project.getStudent().getStudent_id()));
        model.addAttribute("project", project);
        return "project/uploadDocuments";
    }

    @GetMapping("/{id}/uploadAbstract")
    public String UploadAbstract(@PathVariable("id") String id, Model model) {
        Project project = projectService.getProject(id);
        Student student = studentService.getStudent(project.getStudent().getStudent_id());
        model.addAttribute("student", student);
        model.addAttribute("project", project);
        return "abstract/updateAbstract";
    }

    @RequestMapping( value = "/{id}/updateAbstract",method = RequestMethod.POST)
    public String UpDateAbstract(@PathVariable("id") String id, Model model,HttpServletRequest request) throws ServletException, IOException {
        Project project = projectService.getProject(id);
        String detail = request.getParameter("detail");
        String file = uploadFile(request);
        project.setAbstract_details(detail);
        project.setFile_abstract(file);
        projectService.saveProject(project);
        return "redirect:/project/"+project.getStudent().getStudent_id()+"/list";
    }

    public String uploadFile(HttpServletRequest request) throws ServletException, IOException {
        String filename = "";
        if (ServletFileUpload.isMultipartContent(request)) {
            try {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {
                        String name = new File(item.getName()).getName();
                        item.write(new File("c:/test/" + File.separator + name));
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


    @GetMapping("/{id}/viewFile1")
    public String viewFile1(@PathVariable("id") String id, Model model) {
//        Student student = studentService.getStudent(id);
        Project project = projectService.getProject(id);
        model.addAttribute("fileType","บทที่ 1");
        Projectchapter pc = projectChapterService.getProjectChapterByIdAndFileType(id,"บทที่ 1");
        model.addAttribute("student", studentService.getStudent(project.getStudent().getStudent_id()));
        model.addAttribute("project", project);
        model.addAttribute("projectChapter",pc);
        return "project/viewfile";
    }

    @GetMapping("/{id}/viewFile2")
    public String viewFile2(@PathVariable("id") String id, Model model) {
//        Student student = studentService.getStudent(id);
        Project project = projectService.getProject(id);
        Projectchapter pc = projectChapterService.getProjectChapterByIdAndFileType(id,"บทที่ 2");
        model.addAttribute("fileType","บทที่ 2");
        model.addAttribute("student", studentService.getStudent(project.getStudent().getStudent_id()));
        model.addAttribute("project", project);
        model.addAttribute("projectChapter",pc);
        return "project/viewfile";
    }



//    @GetMapping("/{id}/updateAbstract")
//    public String updateAbstract(@PathVariable("id") String id, Model model) {
//        Student student = studentService.getStudent(id);
//        model.addAttribute("student", student);
//        model.addAttribute("project", projectService.getProjectByCode(id));
//        return "abstract/updateAbstract";
//    }

    @GetMapping("/{id}/viewAbstract")
    public String viewAbstract(@PathVariable("id") String id, Model model) {
        Project project = projectService.getProject(id);
        model.addAttribute("student", studentService.getStudent(project.getStudent().getStudent_id()));
        model.addAttribute("project", project);
        return "abstract/viewAbstract";
    }

    @GetMapping("/{id}/approvedPerson")
    public String approvedPerson(@PathVariable("id") String id, Model model) {
        Student student = studentService.getStudent(id);
        model.addAttribute("student", student);
        model.addAttribute("project", projectService.getProjectByCode(id));
        return "advisor/approvedPerson";
    }

}
