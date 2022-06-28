/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DAT
 */
public class Group {
    private int GroupID;
    private String GroupName;
    private String LectiuresID;
    private String CoureID;

    public int getGroupID() {
        return GroupID;
    }

    public String getGroupName() {
        return GroupName;
    }

    public String getLectiuresID() {
        return LectiuresID;
    }

    public String getCoureID() {
        return CoureID;
    }

    public void setGroupID(int GroupID) {
        this.GroupID = GroupID;
    }

    public void setGroupName(String GroupName) {
        this.GroupName = GroupName;
    }

    public void setLectiuresID(String LectiuresID) {
        this.LectiuresID = LectiuresID;
    }

    public void setCoureID(String CoureID) {
        this.CoureID = CoureID;
    }
    
}
