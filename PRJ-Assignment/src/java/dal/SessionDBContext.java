/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Course;
import model.Session;
import model.Group;
import model.Lectures;
import model.Room;
import model.TimeSlot;

/**
 *
 * @author DAT
 */
public class SessionDBContext extends DBContext<Session> {

    public ArrayList<Session> getSessionInADay(String lecturesID, Date date) {
        ArrayList<Session> sessions = new ArrayList<>();
        try {
            String sql = "SELECT s.SessionID,s.SessionDate,g.GroupID,g.GroupName,l.LecturesID,c.CourseID,c.CourseName,t.TimeSlotID,t.TimeSlotBegin,t.TimeSlotEnd,r.RoomID\n"
                    + "From Session s join [Group] g on s.GroupID = g.GroupID\n"
                    + "join Course c on g.CourseID = c.CourseID \n"
                    + "join TimeSlot t on s.TimeSlotID = t.TimeSlotID\n"
                    + "join Lectures l on g.LecturesID = l.LecturesID\n"
                    + "join Room r on s.RoomID = r.RoomID\n"
                    + "where g.LecturesID = ? and s.SessionDate = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, lecturesID);
            stm.setDate(2, date);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Session se = new Session();
                se.setSessionID(rs.getInt("SessionID"));
                se.setSessionDate(rs.getDate("SessionDate"));
                
                Room r = new Room();
                r.setRoomID(rs.getString("RoomID"));
                se.setRoomID(r);

                Group g = new Group();
                g.setGroupID(rs.getInt("GroupID"));
                g.setGroupName(rs.getString("GroupName"));
                
                Lectures l = new Lectures();
                l.setLecturesID(rs.getString("LecturesID"));
                g.setLecturesID(l);
                
                Course c = new Course();
                c.setCourseID(rs.getString("CourseID"));
                c.setCourseName(rs.getString("CourseName"));
                g.setCourseID(c);
                se.setGroupID(g);

                TimeSlot ts = new TimeSlot();
                ts.setTimeSlotID(rs.getString("TimeSlotID"));
                ts.setTimeSlotBegin(rs.getTime("TimeSlotBegin"));
                ts.setTimeSlotEnd(rs.getTime("TimeSlotEnd"));
                se.setTimeSlotID(ts);

                sessions.add(se);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sessions;
    }

    @Override
    public ArrayList<Session> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Session get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
