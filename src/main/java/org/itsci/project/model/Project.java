package org.itsci.project.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity
@Table(name = "projects")
public class Project {
    @Id
    @Column(length = 10)
    private String project_id;

    @NotNull
    @Column(name = "thaiproject_name",length = 200)
    private String thaiproject_name;

    @NotNull
    @Column(name = "engproject_name",length = 200)
    private String engproject_name;

    @NotNull
    @Column(name = "semester")
    private String semester;

    @NotNull
    @Column(name = "abstract_details")
    private String abstract_details;

    @NotNull
    @Column(name = "file_abstract")
    private String file_abstract;

    @Column(name = "approve_date")
    private Date approve_date;

    @NotNull
    @Column(name = "approvestatus",length = 100)
    private String approvestatus;

    @NotNull
    @Column(name = "computer_lang",length = 100)
    private String computer_lang;

    @NotNull
    @Column(name = "database_type",length = 100)
    private String database_type;

    @NotNull
    @Column(name = "exam_date")
    private Date exam_date;

    @NotNull
    @Column(name = "keywords",length = 250)
    private String keywords;

    @NotNull
    @Column(name = "project_type",length = 50)
    private String project_type;

    @ManyToOne
    @JoinColumn(name = "personnelid")
    private Personnel personnel;

    @ManyToOne
    @JoinColumn(name = "student_id")
    private Student student;
//    @ManyToOne
//    @JoinColumn(name = "project_id")
//    private Student student_id;

    public void fill(Project project) {
        this.project_id = project.project_id;
        this.thaiproject_name = project.thaiproject_name;
        this.engproject_name = project.engproject_name;
        this.semester = project.semester;
        this.abstract_details = project.abstract_details;
        this.file_abstract = project.file_abstract;
        this.approve_date = project.approve_date;
        this.approvestatus = project.approvestatus;
        this.computer_lang = project.computer_lang;
        this.database_type = project.database_type;
        this.exam_date = project.exam_date;
        this.keywords = project.keywords;
        this.project_type = project.project_type;
        this.personnel = project.personnel;
        this.student = project.student;
    }

    public Project(String project_id, String thaiproject_name, String engproject_name, String semester, String abstract_details,String file_abstract, Date approve_date, String approvestatus, String computer_lang, String database_type, Date exam_date, String keywords, String project_type, Personnel personnel, Student student) {
        this.project_id = project_id;
        this.thaiproject_name = thaiproject_name;
        this.engproject_name = engproject_name;
        this.semester = semester;
        this.abstract_details = abstract_details;
        this.file_abstract = file_abstract;
        this.approve_date = approve_date;
        this.approvestatus = approvestatus;
        this.computer_lang = computer_lang;
        this.database_type = database_type;
        this.exam_date = exam_date;
        this.keywords = keywords;
        this.project_type = project_type;
        this.personnel = personnel;
        this.student = student;
    }

    public Project() {
    }

    public String getProject_id() {
        return project_id;
    }

    public void setProject_id(String project_id) {
        this.project_id = project_id;
    }

    public String getThaiproject_name() {
        return thaiproject_name;
    }

    public void setThaiproject_name(String thaiproject_name) {
        this.thaiproject_name = thaiproject_name;
    }

    public String getEngproject_name() {
        return engproject_name;
    }

    public void setEngproject_name(String engproject_name) {
        this.engproject_name = engproject_name;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public String getAbstract_details() {
        return abstract_details;
    }

    public void setAbstract_details(String abstract_details) {
        this.abstract_details = abstract_details;
    }

    public String getFile_abstract() {
        return file_abstract;
    }

    public void setFile_abstract(String file_abstract) {
        this.file_abstract = file_abstract;
    }

    public Date getApprove_date() {
        return approve_date;
    }

    public void setApprove_date(Date approve_date) {
        this.approve_date = approve_date;
    }

    public String getApprovestatus() {
        return approvestatus;
    }

    public void setApprovestatus(String approvestatus) {
        this.approvestatus = approvestatus;
    }

    public String getComputer_lang() {
        return computer_lang;
    }

    public void setComputer_lang(String computer_lang) {
        this.computer_lang = computer_lang;
    }

    public String getDatabase_type() {
        return database_type;
    }

    public void setDatabase_type(String database_type) {
        this.database_type = database_type;
    }

    public Date getExam_date() {
        return exam_date;
    }

    public void setExam_date(Date exam_date) {
        this.exam_date = exam_date;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public String getProject_type() {
        return project_type;
    }

    public void setProject_type(String project_type) {
        this.project_type = project_type;
    }

    public Personnel getPersonnel() {
        return personnel;
    }

    public void setPersonnel(Personnel personnel) {
        this.personnel = personnel;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }
}
