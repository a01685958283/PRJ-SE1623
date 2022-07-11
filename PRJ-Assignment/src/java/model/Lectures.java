/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DAT
 */
public class Lectures {
    private String LecturesID;
    private String LecturesName;
    private String LecturesEmail;
    private int LecturesPhoneNumber;

    public Lectures() {
    }

    public Lectures(String LecturesID, String LecturesName, String LecturesEmail, int LecturesPhoneNumber) {
        this.LecturesID = LecturesID;
        this.LecturesName = LecturesName;
        this.LecturesEmail = LecturesEmail;
        this.LecturesPhoneNumber = LecturesPhoneNumber;
    }
    
    public String getLecturesID() {
        return LecturesID;
    }

    public String getLecturesName() {
        return LecturesName;
    }

    public String getLecturesEmail() {
        return LecturesEmail;
    }

    public int getLecturesPhoneNumber() {
        return LecturesPhoneNumber;
    }

    public void setLecturesID(String LecturesID) {
        this.LecturesID = LecturesID;
    }

    public void setLecturesName(String LecturesName) {
        this.LecturesName = LecturesName;
    }

    public void setLecturesEmail(String LecturesEmail) {
        this.LecturesEmail = LecturesEmail;
    }

    public void setLecturesPhoneNumber(int LecturesPhoneNumber) {
        this.LecturesPhoneNumber = LecturesPhoneNumber;
    }
    
}
