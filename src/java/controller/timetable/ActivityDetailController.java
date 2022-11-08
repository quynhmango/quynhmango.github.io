/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.timetable;

import dao.ActivityDetailDBContext;
import dao.AttandanceDBContext;
import dao.LectureDBContext;
import dao.SessionDBContext;
import dao.SubjectDAO;
import dao.TimeSlotDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.Attandance;
import model.Lecturer;
import model.Session;
import model.Student;
import model.Subject;
import model.TimeSlot;
import util.DateTimeHelper;

/**
 *
 * @author ASUS
 */
public class ActivityDetailController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ActivityDetailController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ActivityDetailController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        ActivityDetailDBContext a_context = new ActivityDetailDBContext();
        int sesid = Integer.parseInt(request.getParameter("stdid"));
        AttandanceDBContext attDB = new AttandanceDBContext();
        ArrayList<Attandance> atts = attDB.getAttsBySessionId(sesid);
        request.setAttribute("atts", atts);
        
        SessionDBContext sesDB = new SessionDBContext();
        Session ses = sesDB.get(sesid);
        request.setAttribute("ses", ses);
        
        if(DateTimeHelper.getDaystoCurrent(ses.getDate())>=2)
            response.getWriter().println("this session is out of date");
        else if(DateTimeHelper.getDaystoCurrent(ses.getDate())< 0)
            response.getWriter().println("this session is not yet started");
        else

        //back-end-> front-end
        request.getRequestDispatcher("student/ActivityDetail.jsp").forward(request, response);
        //response.getWriter().print(listSub.size());
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
        Session ses = new Session();
        ses.setId(Integer.parseInt(request.getParameter("sesid")));
        
        String[] stdids = request.getParameterValues("stdid");
        for (String stdid : stdids) {
            Attandance a = new Attandance();
            Student s = new Student();
            a.setStudent(s);
            a.setSession(ses);
            s.setId(Integer.parseInt(stdid));
            a.setPresent(request.getParameter("present"+stdid).equals("present"));
            a.setDescription(request.getParameter("description"+stdid));
           // ses.getAttandances().add(a);
        }
        
        SessionDBContext db = new SessionDBContext();
        db.updateAttandance(ses);
        response.sendRedirect("takeatt?id="+ses.getId());
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
