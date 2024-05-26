package com.entities;

import java.util.Date;

public class Enrollment {
    private int enrollmentId;
    private int studentId;
    private int courseId;
    private Date enrollmentDate;

    // Constructors
    public Enrollment() {
    }

    public Enrollment(int enrollmentId, int studentId, int courseId, Date enrollmentDate) {
        this.enrollmentId = enrollmentId;
        this.studentId = studentId;
        this.courseId = courseId;
        this.enrollmentDate = enrollmentDate;
    }

    // Getters and setters
    public int getEnrollmentId() {
        return enrollmentId;
    }

    public void setEnrollmentId(int enrollmentId) {
        this.enrollmentId = enrollmentId;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public Date getEnrollmentDate() {
        return enrollmentDate;
    }

    public void setEnrollmentDate(Date enrollmentDate) {
        this.enrollmentDate = enrollmentDate;
    }

    // Additional methods
    public boolean isValid() {
        // Add any validation logic here
        // For example, ensure that studentId and courseId are positive integers
        return studentId > 0 && courseId > 0;
    }

    public void printDetails() {
        System.out.println("Enrollment ID: " + enrollmentId);
        System.out.println("Student ID: " + studentId);
        System.out.println("Course ID: " + courseId);
        System.out.println("Enrollment Date: " + enrollmentDate);
    }
}

