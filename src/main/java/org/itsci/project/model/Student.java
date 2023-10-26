package org.itsci.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "students")
public class Student {
    @Id
    @Column(length = 10)
    private String student_id;

    @NotNull
    @Column(name = "prefix",length = 20)
    private String prefix;

    @NotNull
    @Column(name = "firstname",length = 100)
    private String firstname;

    @NotNull
    @Column(name = "lastname",length = 100)
    private String lastname;

    @NotNull
    @Column(name = "phone",length = 10)
    private String phone;

    @NotNull
    @Column(name = "email",length = 50)
    private String email;

    @NotNull
    @Column(name = "password",length = 16)
    private String password;

    @NotNull
    @Column(name = "job_description",length = 50)
    private String job_description;

    public Student() {
    }

    public Student(String student_id, String prefix, String firstname, String lastname, String phone, String email, String password, String job_description) {
        this.student_id = student_id;
        this.prefix = prefix;
        this.firstname = firstname;
        this.lastname = lastname;
        this.phone = phone;
        this.email = email;
        this.password = password;
        this.job_description = job_description;
    }
    public void fill(Student student) {
        this.prefix = student.getPrefix();
        this.firstname = student.getFirstname();
        this.lastname = student.getLastname();
        this.phone = student.getPhone();
        this.email = student.getEmail();
        this.password = student.getPassword();
        this.job_description = student.getJob_description();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getJob_description() {
        return job_description;
    }

    public void setJob_description(String job_description) {
        this.job_description = job_description;
    }

    public String getStudent_id() {
        return student_id;
    }

    public void setStudent_id(String student_id) {
        this.student_id = student_id;
    }

    public String getPrefix() {
        return prefix;
    }

    public void setPrefix(String prefix) {
        this.prefix = prefix;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
