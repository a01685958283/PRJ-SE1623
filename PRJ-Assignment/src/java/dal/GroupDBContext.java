/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attendence;
import model.Course;
import model.Group;
import model.Lectures;
import model.Student;

/**
 *
 * @author DAT
 */
public class GroupDBContext extends DBContext<Group> {

    public Group list(int GroupID) {
        try {
            String sql = "SELECT s.StudentID,s.StudentName,s.StudentEmail,s.StudentPhoneNumber,g.GroupID,g.GroupName,g.LecturesID,g.CourseID,a.Status,a.Comment\n"
                    + "FROM Attendence a join Student s ON a.StudentID = s.StudentID join StudentGroup sg ON s.StudentID = sg.StudentID join [Group] g ON sg.GroupID = g.GroupID\n"
                    + "where g.GroupID = ?";

            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, GroupID);
            ResultSet rs = stm.executeQuery();
            Group g = null;
            while (rs.next()) {
                if (g == null) {
                    g = new Group();
                    g.setGroupID(rs.getInt("GroupID"));
                    g.setGroupName(rs.getString("GroupName"));
                    Lectures l = new Lectures();
                    l.setLecturesID(rs.getString("LecturesID"));
                    g.setLecturesID(l);
                    Course c = new Course();
                    c.setCourseID(rs.getString("CourseID"));
                    g.setCourseID(c);
                }
                Student s = new Student();
                s.setStudentID(rs.getString("StudentID"));
                s.setStudentName(rs.getString("StudentName"));
                s.setStudentEmail(rs.getString("StudentEmail"));
                s.setStudentPhoneNumber(rs.getInt("StudentPhoneNumber"));
                g.getSt().add(s);
                Attendence a = new Attendence();
                a.setStatus(rs.getString("Status"));
                a.setComment(rs.getString("Comment"));
                g.getSt2().add(a);
            }
            return g;
        } catch (SQLException ex) {
            Logger.getLogger(Group.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public Group get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Group> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
