package org.itsci.project.service;

import org.itsci.project.dao.StudentDao;
import org.itsci.project.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService{

    @Autowired
    private StudentDao studentDao;

    @Override
    @Transactional
    public void saveStudent(Student student) {
        studentDao.saveStudent(student);
    }

    @Override
    @Transactional
    public Student getStudent(String id) {
        return studentDao.getStudent(id);
    }

    @Override
    @Transactional
    public void deleteStudent(String id) {
        studentDao.deleteStudent(id);
    }

    @Override
    @Transactional
    public Student getStudentByCode(String code) {
        return studentDao.getStudentByCode(code);
    }

    @Override
    @Transactional
    public void updateStudent(Student dbStudent, Student student) {
        Student categoryEntity = studentDao.getStudent(student.getStudent_id());
        categoryEntity.fill(student);
        saveStudent(categoryEntity);
    }

    @Override
    @Transactional
    public List<Student> getStudent() {
        return studentDao.getStudents();
    }
}
