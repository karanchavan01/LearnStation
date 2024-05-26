package com.entities;

public class Course {
    private int id;
    private String instructor;
    private String date;
    private String title;
    private double price;

    // Default constructor
    public Course() {
    }

    // Parameterized constructor
    public Course(int id, String instructor, String date, String title, double price) {
        this.id = id;
        this.instructor = instructor;
        this.date = date;
        this.title = title;
        this.price = price;
    }

    // Getters and setters for the fields
    // toString method
    @Override
    public String toString() {
        return "Course{" +
                "id=" + id +
                ", instructor='" + instructor + '\'' +
                ", date='" + date + '\'' +
                ", title='" + title + '\'' +
                ", price=" + price +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getInstructor() {
        return instructor;
    }

    public void setInstructor(String instructor) {
        this.instructor = instructor;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    // You can add more methods as needed
}
