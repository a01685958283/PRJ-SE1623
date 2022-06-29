/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;


/**
 *
 * @author DAT
 */
public class Group {
    private int GroupID;
    private String GroupName;
    private Lectures LecturesID;
    private Course CourseID;
    private ArrayList<Student> st = new ArrayList<>();

    public int getGroupID() {
        return GroupID;
    }

    public void setSt(ArrayList<Student> st) {
        this.st = st;
    }

    public ArrayList<Student> getSt() {
        return st;
    }

    public String getGroupName() {
        return GroupName;
    }

    public Lectures getLecturesID() {
        return LecturesID;
    }

    public Course getCourseID() {
        return CourseID;
    }

    public void setGroupID(int GroupID) {
        this.GroupID = GroupID;
    }

    public void setGroupName(String GroupName) {
        this.GroupName = GroupName;
    }

    public void setLecturesID(Lectures LecturesID) {
        this.LecturesID = LecturesID;
    }

    public void setCourseID(Course CourseID) {
        this.CourseID = CourseID;
    }
    
}
