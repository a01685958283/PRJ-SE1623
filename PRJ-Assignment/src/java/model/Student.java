/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DAT
 */
public class Student {
    private String StudentID;
    private String StudentName;
    private String StudentEmail;
    
    public Student() {
    }

    public Student(String StudentID, String StudentName, String StudentEmail, int StudentPhoneNumber) {
        this.StudentID = StudentID;
        this.StudentName = StudentName;
        this.StudentEmail = StudentEmail;
    }

    public String getStudentID() {
        return StudentID;
    }

    public String getStudentName() {
        return StudentName;
    }

    public String getStudentEmail() {
        return StudentEmail;
    }


    public void setStudentID(String StudentID) {
        this.StudentID = StudentID;
    }

    public void setStudentName(String StudentName) {
        this.StudentName = StudentName;
    }

    public void setStudentEmail(String StudentEmail) {
        this.StudentEmail = StudentEmail;
    }

        
}
