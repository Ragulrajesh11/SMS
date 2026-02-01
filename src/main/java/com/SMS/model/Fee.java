package com.SMS.model;

public class Fee {
    private int id;
    private int studentId;
    private double amount;

    public Fee() {}

    public Fee(int studentId, double amount) {
        this.studentId = studentId;
        this.amount = amount;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public int getStudentId() { return studentId; }
    public void setStudentId(int studentId) { this.studentId = studentId; }

    public double getAmount() { return amount; }
    public void setAmount(double amount) { this.amount = amount; }
}
