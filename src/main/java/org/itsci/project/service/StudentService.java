package org.itsci.project.service;

import org.itsci.project.model.Student;

import java.util.List;

public interface StudentService {
    List<Student> getStudent();

    void saveStudent(Student student);

    Student getStudent(String id);

    void deleteStudent(String id);

    Student getStudentByCode(String code);

    void updateStudent(Student dbStudent, Student student);
}
