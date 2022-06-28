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
import model.GroupStudent;

/**
 *
 * @author DAT
 */
public class GroupStudentDBContext  extends DBContext<GroupStudent>{

    @Override
    public ArrayList<GroupStudent> list() {
        ArrayList<GroupStudent> gs = new ArrayList<>();
        try {
            String sql = "SELECT s.StudentID,s.StudentName,g.GroupID,g.GroupName,g.LecturesID\n" +
             "FROM Student s join StudentGroup sg ON s.StudentID = sg.StudentID join [Group] g ON sg.GroupID = g.GroupID";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                GroupStudent d = new GroupStudent();
                d.setGroupID(rs.getInt("g.GroupID"));
                d.setStudentID(rs.getString("s.StudentID"));
                d.setStudentName(rs.getString("s.StudentName"));
                gs.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(GroupStudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return gs;}

    @Override
    public GroupStudent get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(GroupStudent model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(GroupStudent model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(GroupStudent model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
