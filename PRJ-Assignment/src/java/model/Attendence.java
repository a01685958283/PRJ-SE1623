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
public class Attendence {
    private Student StudentID;
    private Session SessionID;
    private String Status;
    private String Comment;
    private Date RecordTime;

    public Attendence() {
    }

    public Attendence(Student StudentID, Session SessionID, String Status, String Comment, Date RecordTime) {
        this.StudentID = StudentID;
        this.SessionID = SessionID;
        this.Status = Status;
        this.Comment = Comment;
        this.RecordTime = RecordTime;
    }
    
    public Student getStudentID() {
        return StudentID;
    }

    public Session getSessionID() {
        return SessionID;
    }

    public String getStatus() {
        return Status;
    }

    public String getComment() {
        return Comment;
    }

    public Date getRecordTime() {
        return RecordTime;
    }

    public void setStudentID(Student StudentID) {
        this.StudentID = StudentID;
    }

    public void setSessionID(Session SessionID) {
        this.SessionID = SessionID;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public void setComment(String Comment) {
        this.Comment = Comment;
    }

    public void setRecordTime(Date RecordTime) {
        this.RecordTime = RecordTime;
    }
    
}
