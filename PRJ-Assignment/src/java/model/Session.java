/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author DAT
 */
public class Session {
    private int SessionID;
    private Date SessionDate;
    private Room RoomID;
    private Group GroupID;
    private TimeSlot TimeSlotID;
    private Lectures LecturesID;
    private ArrayList<Attendence> attendances = new ArrayList<>();

    public Session() {
    }

    public int getSessionID() {
        return SessionID;
    }

    public Date getSessionDate() {
        return SessionDate;
    }

    public Room getRoomID() {
        return RoomID;
    }

    public Group getGroupID() {
        return GroupID;
    }

    public TimeSlot getTimeSlotID() {
        return TimeSlotID;
    }

    public Lectures getLecturesID() {
        return LecturesID;
    }

    public ArrayList<Attendence> getAttendances() {
        return attendances;
    }

    public void setSessionID(int SessionID) {
        this.SessionID = SessionID;
    }

    public void setSessionDate(Date SessionDate) {
        this.SessionDate = SessionDate;
    }

    public void setRoomID(Room RoomID) {
        this.RoomID = RoomID;
    }

    public void setGroupID(Group GroupID) {
        this.GroupID = GroupID;
    }

    public void setTimeSlotID(TimeSlot TimeSlotID) {
        this.TimeSlotID = TimeSlotID;
    }

    public void setLecturesID(Lectures LecturesID) {
        this.LecturesID = LecturesID;
    }

    public void setAttendances(ArrayList<Attendence> attendances) {
        this.attendances = attendances;
    }
    
}
