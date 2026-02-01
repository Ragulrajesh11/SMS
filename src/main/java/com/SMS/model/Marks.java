package com.SMS.model;

public class Marks {
    private int id;
    private int studentId;
    private String subject;
    private int mark;

    // Default Constructor
    public Marks() {}

    // ✅ FIXED: Added Parameterized Constructor
    public Marks(int studentId, String subject, int mark) {
        this.studentId = studentId;
        this.subject = subject;
        this.mark = mark;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public int getStudentId() { return studentId; }
    public void setStudentId(int studentId) { this.studentId = studentId; }

    public String getSubject() { return subject; }
    public void setSubject(String subject) { this.subject = subject; }

    public int getMark() { return mark; }
    public void setMark(int mark) { this.mark = mark; }
}