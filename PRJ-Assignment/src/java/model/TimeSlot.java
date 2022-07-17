/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Time;
import java.util.ArrayList;

/**
 *
 * @author DAT
 */
public class TimeSlot {
    private String TimeslotID;
    private Time TimeSlotBegin;
    private Time TimeSlotEnd;
    private ArrayList<Session> sessions = new ArrayList<>();
    
    public TimeSlot() {
    }

    public TimeSlot(String TimeslotID, Time TimeSlotBegin, Time TimeSlotEnd) {
        this.TimeslotID = TimeslotID;
        this.TimeSlotBegin = TimeSlotBegin;
        this.TimeSlotEnd = TimeSlotEnd;
    }

    public ArrayList<Session> getSessions() {
        return sessions;
    }

    public void setSessions(ArrayList<Session> sessions) {
        this.sessions = sessions;
    }
    
    public String getTimeslotID() {
        return TimeslotID;
    }

    public Time getTimeSlotBegin() {
        return TimeSlotBegin;
    }

    public Time getTimeSlotEnd() {
        return TimeSlotEnd;
    }

    public void setTimeslotID(String TimeslotID) {
        this.TimeslotID = TimeslotID;
    }

    public void setTimeSlotBegin(Time TimeSlotBegin) {
        this.TimeSlotBegin = TimeSlotBegin;
    }

    public void setTimeSlotEnd(Time TimeSlotEnd) {
        this.TimeSlotEnd = TimeSlotEnd;
    }
    
}
