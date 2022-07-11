/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author DAT
 */
public class Session {
    private int SessionID;
    private Date SessionDate;
    private String RoomID;
    private String GroupID;
    private String TimeSlotID;

    public Session() {
    }

    public Session(int SessionID, Date SessionDate, String RoomID, String GroupID, String TimeSlotID) {
        this.SessionID = SessionID;
        this.SessionDate = SessionDate;
        this.RoomID = RoomID;
        this.GroupID = GroupID;
        this.TimeSlotID = TimeSlotID;
    }
    
    public int getSessionID() {
        return SessionID;
    }

    public Date getSessionDate() {
        return SessionDate;
    }

    public String getRoomID() {
        return RoomID;
    }

    public String getGroupID() {
        return GroupID;
    }

    public String getTimeSlotID() {
        return TimeSlotID;
    }

    public void setSessionID(int SessionID) {
        this.SessionID = SessionID;
    }

    public void setSessionDate(Date SessionDate) {
        this.SessionDate = SessionDate;
    }

    public void setRoomID(String RoomID) {
        this.RoomID = RoomID;
    }

    public void setGroupID(String GroupID) {
        this.GroupID = GroupID;
    }

    public void setTimeSlotID(String TimeSlotID) {
        this.TimeSlotID = TimeSlotID;
    }
    
}
