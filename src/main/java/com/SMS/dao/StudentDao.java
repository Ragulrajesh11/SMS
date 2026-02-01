package com.SMS.dao;

import com.SMS.model.Student;
import java.util.List;

public interface StudentDao {

    boolean addStudent(Student student);

    Student getStudentById(int id);
    public boolean updateStudent(Student s);
    public boolean deleteStudent(int id);


    List<Student> getAllStudents();
}

