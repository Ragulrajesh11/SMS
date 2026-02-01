package com.SMS.dao;

import com.SMS.model.Marks;
import java.util.List;

public interface MarksDao {
    boolean addMarks(Marks m);
    List<Marks> getMarksByStudentId(int studentId);
    List<Marks> getAllMarks(); // ✅ FIXED: Added this
}