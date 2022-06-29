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
import model.StudentGroup;
import model.Student;
import model.Group;
/**
 *
 * @author DAT
 */
public class StudentGroupDBContext  extends DBContext<StudentGroup>{

    @Override
    public ArrayList<StudentGroup> list() {
        ArrayList<StudentGroup> gs = new ArrayList<>();
        try {
            String sql = "SELECT s.StudentID,s.StudentName,g.GroupID,g.GroupName,g.LecturesID\n" +
             "FROM Student s join StudentGroup sg ON s.StudentID = sg.StudentID join [Group] g ON sg.GroupID = g.GroupID";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                StudentGroup d = new StudentGroup();
                d.setGroupID(rs.getInt("GroupID"));
                d.setStudentID(rs.getString("StudentID"));
                Student s = new Student();
                s.setStudentName(rs.getString("StudentName"));
                Group g = new Group();
                g.setLecturesID(rs.getString("LecturesID"));
                g.setCourseID(rs.getString("CourseID"));
                d.setLecturesID(g);
                d.setCourseID(g);
                d.setStudentName(s);
                gs.add(d);
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
