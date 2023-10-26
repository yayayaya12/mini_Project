package org.itsci.project.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity
@Table(name = "projectchapters")
public class Projectchapter {
    @Id
    @Column(length = 10)
    private String file_id;

    @NotNull
    @Column(name = "filename", length = 100)
    private String filename;

    @NotNull
    @Column(name = "filetype", length = 100)
    private String filetype;

    @NotNull
    @Column(name = "sentdate")
    private Date sentdate;

    @NotNull
    @Column(name = "status", length = 10)
    private String status;

    @ManyToOne
    @JoinColumn(name = "project_id")
    private Project project;

    public void fill(Projectchapter projectchapter) {
        this.file_id = projectchapter.file_id;
        this.filename = projectchapter.filename;
        this.filetype = projectchapter.filetype;
        this.sentdate = projectchapter.sentdate;
        this.status = projectchapter.status;
        this.project = projectchapter.project;
    }

    public Projectchapter() {
    }

    public Projectchapter(String file_id, String filename, String filetype, Date sentdate, String status, Project project) {
        this.file_id = file_id;
        this.filename = filename;
        this.filetype = filetype;
        this.sentdate = sentdate;
        this.status = status;
        this.project = project;
    }

    public String getFile_id() {
        return file_id;
    }

    public void setFile_id(String file_id) {
        this.file_id = file_id;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getFiletype() {
        return filetype;
    }

    public void setFiletype(String filetype) {
        this.filetype = filetype;
    }

    public Date getSentdate() {
        return sentdate;
    }

    public void setSentdate(Date sentdate) {
        this.sentdate = sentdate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
    }
}
