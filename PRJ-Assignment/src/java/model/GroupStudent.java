/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DAT
 */
public class GroupStudent {
    private String StudentID;
    private int GroupID;
    private String GroupName;
    private String LectiuresID;
    private String StudentName;

    public String getStudentID() {
        return StudentID;
    }

    public int getGroupID() {
        return GroupID;
    }

    public void setStudentID(String StudentID) {
        this.StudentID = StudentID;
    }

    public void setGroupID(int GroupID) {
        this.GroupID = GroupID;
    }

    public String getGroupName() {
        return GroupName;
    }

    public String getLectiuresID() {
        return LectiuresID;
    }

    public String getStudentName() {
        return StudentName;
    }

    public void setGroupName(String GroupName) {
        this.GroupName = GroupName;
    }

    public void setLectiuresID(String LectiuresID) {
        this.LectiuresID = LectiuresID;
    }

    public void setStudentName(String StudentName) {
        this.StudentName = StudentName;
    }

}
