package org.itsci.project.dao;

import org.itsci.project.model.Student;

import java.util.List;

public interface StudentDao {
    List<Student> getStudents();

    void saveStudent(Student student);

    Student getStudent(String id);

    void deleteStudent(String id);

    Student getStudentByCode(String code);
}
