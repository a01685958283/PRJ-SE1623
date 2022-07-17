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
import model.Course;
import model.StudentGroup;
import model.Student;
import model.Group;
import model.Lectures;
/**
 *
 * @author DAT
 */
public class StudentGroupDBContext  extends DBContext<StudentGroup>{

    /*public ArrayList<StudentGroup> listStudentInAGroup(Integer GroupID) {
        ArrayList<StudentGroup> sg = new ArrayList<>();
        try {
            String sql = "Select s.StudentID,s.StudentName,s.StudentEmail,s.StudentPhoneNumber,g.GroupID,g.GroupName,g.CourseID,g.LecturesID\n"
                    + "FROM Student s join StudentGroup st on s.StudentID like st.StudentID "
                    + "join [Group] g on g.GroupID like st.GroupID\n"
                    + "Where g.GroupID=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, GroupID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                s.setStudentID(rs.getString("StudentID"));
                s.setStudentName(rs.getString("StudentName"));
                s.setStudentEmail(rs.getString("StudentEmail"));
                Group g = new Group();
                g.setGroupID(rs.getInt("GroupID"));
                g.setGroupName(rs.getString("GroupName"));
                Course c = new Course();
                c.setCourseID(rs.getString("CourseID"));
                Lectures l = new Lectures();
                l.setLecturesID(rs.getString("LecturesID"));
                
                g.setCourseID(c);
                g.setLecturesID(l);
                
                StudentGroup st = new StudentGroup();
                st.setGroupID(g);
                st.setStudentID(s);
                
                sg.add(st);
            }
        }catch (SQLException ex) {
            Logger.getLogger(StudentGroup.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sg;
    }*/
    
    @Override
    public ArrayList<StudentGroup> list() {
        ArrayList<StudentGroup> gs = new ArrayList<>();
        try {
            String sql = "";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentGroup.class.getName()).log(Level.SEVERE, null, ex);
        }
        return gs;}

    @Override
    public StudentGroup get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(StudentGroup model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(StudentGroup model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(StudentGroup model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
