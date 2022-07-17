/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AttendanceDBContext;
import dal.GroupDBContext;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Time;
import java.util.ArrayList;
import model.Attendence;
import model.Group;
import model.Session;
import model.Student;

/**
 *
 * @author ACER
 */
public class AttendanceController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        GroupDBContext gdb = new GroupDBContext();
        Group g = gdb.listStudentInAGroup(3);

        request.setAttribute("listStudent", g);
        request.getRequestDispatcher("/view/emp/attendance.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String[] studentIDs = request.getParameterValues("studentID");
        ArrayList<Attendence> alist = new ArrayList<>();
        for (int i = 0; i < studentIDs.length; i++) {
            Attendence a = new Attendence();
            Student st = new Student();
            st.setStudentID(studentIDs[i]);
            
            Session se = new Session();
            se.setSessionID(1);
            
            a.setStudentID(st);
            a.setSessionID(se);
            a.setStatus(request.getParameter("status_"+studentIDs[i]));
            a.setComment(request.getParameter("comment_"+studentIDs[i]));
            a.setRecordTime(Time.valueOf(request.getParameter("recordtime_"+studentIDs[i])));
            alist.add(a);
        }
        AttendanceDBContext atdb = new AttendanceDBContext();
        atdb.insertAttendance(alist);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
