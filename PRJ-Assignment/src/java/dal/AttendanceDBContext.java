/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attendence;

/**
 *
 * @author DAT
 */
public class AttendanceDBContext extends DBContext<Attendence>{

    public void insertAttendance(ArrayList<Attendence> a) {
        try {
            for (Attendence attendence : a) {
                String sql = "INSERT INTO [dbo].[Attendence]\n"
                    + "           ([StudentID]\n"
                    + "           ,[SessionID]\n"
                    + "           ,[Status]\n"
                    + "           ,[Comment]\n"
                    + "           ,[RecordTime])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?)\n";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, attendence.getStudentID().getStudentID());
            stm.setInt(2, attendence.getSessionID().getSessionID());
            stm.setString(3, attendence.getStatus());
            stm.setString(4, attendence.getComment());
            stm.setDate(5, attendence.getRecordTime());
            stm.executeUpdate();
            }
        } catch (SQLException ex) {
            Logger.getLogger(AttendanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Override
    public ArrayList<Attendence> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Attendence get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Attendence model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Attendence model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Attendence model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
