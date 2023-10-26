package org.itsci.project.model;





import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity
@Table(name = "video")
public class Video {
    @Id
    @Column(length = 10)
    private String video_id;

    @NotNull
    @Column(name = "filename",length = 100)
    private String filename;

    @NotNull
    @Column(name = "sentdate")
    private Date sentdate;

    @NotNull
    @Column(name = "status",length = 10)
    private String status;
    @OneToOne
    @JoinColumn(name = "project_id")
    private Project project;

    public Video() {
    }

    public Video(String video_id, String filename, Date sentdate, String status, Project project) {
        this.video_id = video_id;
        this.filename = filename;
        this.sentdate = sentdate;
        this.status = status;
        this.project = project;
    }

    public void fill(Video video) {
        this.video_id = video.video_id;
        this.filename = video.filename;
        this.sentdate = video.sentdate;
        this.status = video.status;
        this.project = video.project;
    }

    public String getVideo_id() {
        return video_id;
    }

    public void setVideo_id(String video_id) {
        this.video_id = video_id;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
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
