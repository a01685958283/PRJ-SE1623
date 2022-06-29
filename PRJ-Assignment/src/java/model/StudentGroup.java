/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DAT
 */
public class StudentGroup {

    private int GroupID;
    private String StudentID;
    Group GroupName;
    Group CourseID;
    Group LecturesID;
    Student StudentName;

    public int getGroupID() {
        return GroupID;
    }

    public String getStudentID() {
        return StudentID;
    }

    public Group getGroupName() {
        return GroupName;
    }

    public Group getCourseID() {
        return CourseID;
    }

    public Group getLecturesID() {
        return LecturesID;
    }

    public Student getStudentName() {
        return StudentName;
    }

    public void setGroupID(int GroupID) {
        this.GroupID = GroupID;
    }

    public void setStudentID(String StudentID) {
        this.StudentID = StudentID;
    }

    public void setGroupName(Group GroupName) {
        this.GroupName = GroupName;
    }

    public void setCourseID(Group CourseID) {
        this.CourseID = CourseID;
    }

    public void setLecturesID(Group LecturesID) {
        this.LecturesID = LecturesID;
    }

    public void setStudentName(Student StudentName) {
        this.StudentName = StudentName;
    }
    
}
