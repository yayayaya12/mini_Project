package org.itsci.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;


@Entity
@Table(name = "personnels")
public class Personnel {
    @Id
    private String personnelid;

    @NotNull
    @Column(name = "description",length = 100)
    private String description;

    @NotNull
    @Column(name = "email",length = 100)
    private String email;

    @NotNull
    @Column(name = "expertise",length = 100)
    private String expertise;

    @NotNull
    @Column(name = "firstname",length = 100)
    private String firstname;

    @NotNull
    @Column(name = "image",length = 100)
    private String image;

    @NotNull
    @Column(name = "lastname",length = 100)
    private String lastname;

    @NotNull
    @Column(name = "password",length = 16)
    private String password;

    @NotNull
    @Column(name = "phone",length = 10)
    private String phone;
    @NotNull
    @Column(name = "position",length = 100)
    private String position;

    @NotNull
    @Column(name = "scholarlink",length = 100)
    private String scholarlink;

    @NotNull
    @Column(name = "workexperience",length = 100)
    private String workexperience;

    public Personnel() {
    }

    public Personnel(String personnelid, String description, String email, String expertise, String firstname, String image, String lastname, String password, String phone, String position, String scholarlink, String workexperience) {
        this.personnelid = personnelid;
        this.description = description;
        this.email = email;
        this.expertise = expertise;
        this.firstname = firstname;
        this.image = image;
        this.lastname = lastname;
        this.password = password;
        this.phone = phone;
        this.position = position;
        this.scholarlink = scholarlink;
        this.workexperience = workexperience;
    }
    public void fill(Personnel personnel) {
        this.personnelid = personnel.getPersonnelid();
        this.description = personnel.getDescription();
        this.email = personnel.getEmail();
        this.expertise = personnel.getExpertise();
        this.firstname = personnel.getFirstname();
        this.image = personnel.getImage();
        this.lastname = personnel.getLastname();
        this.password = personnel.getPassword();
        this.phone = personnel.getPhone();
        this.position = personnel.getPosition();
        this.scholarlink = personnel.getScholarlink();
        this.workexperience = personnel.getWorkexperience();
    }
    public String getPersonnelid() {
        return personnelid;
    }

    public void setPersonnelid(String personnelid) {
        this.personnelid = personnelid;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getExpertise() {
        return expertise;
    }

    public void setExpertise(String expertise) {
        this.expertise = expertise;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getScholarlink() {
        return scholarlink;
    }

    public void setScholarlink(String scholarlink) {
        this.scholarlink = scholarlink;
    }

    public String getWorkexperience() {
        return workexperience;
    }

    public void setWorkexperience(String workexperience) {
        this.workexperience = workexperience;
    }
}
