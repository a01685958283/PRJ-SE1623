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

    private Group GroupID;
    private Student StudentID;

    public StudentGroup() {
    }

    public StudentGroup(Group GroupID, Student StudentID) {
        this.GroupID = GroupID;
        this.StudentID = StudentID;
    }

    public Group getGroupID() {
        return GroupID;
    }

    public Student getStudentID() {
        return StudentID;
    }

    public void setGroupID(Group GroupID) {
        this.GroupID = GroupID;
    }

    public void setStudentID(Student StudentID) {
        this.StudentID = StudentID;
    }   
}
