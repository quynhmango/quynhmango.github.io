/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dal.DBContext;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attandance;
import model.Group;
import model.Lecturer;
import model.Room;
import model.Session;
import model.Subject;
import model.TimeSlot;

/**
 *
 * @author ASUS
 */
public class SessionDBContext {

    Connection con;

    public static void main(String[] args) {
        SessionDBContext sessdao = new SessionDBContext();
    }

    public SessionDBContext() {
        try {
            DBContext db = new DBContext();
            con = db.getConnection();
            System.out.println("ok");
        } catch (Exception e) {
            System.out.println("fail : " + e);
        }
    }

    public ArrayList<Session> filter(int lid, Date from, Date to) {
        ArrayList<Session> sessions = new ArrayList<>();
        try {
            String sql = "SELECT  \n"
                    + "	ses.sesid,ses.[date],ses.[index],ses.attanded\n"
                    + "	,l.lid,l.lname\n"
                    + "	,g.gid,g.gname\n"
                    + "	,sub.subid,sub.subname\n"
                    + "	,r.rid,r.rname\n"
                    + "	,t.tid,t.[description]\n"
                    + "FROM [Session] ses \n"
                    + "			INNER JOIN Lecturer l ON l.lid = ses.lid\n"
                    + "			INNER JOIN [Group] g ON g.gid = ses.gid\n"
                    + "			INNER JOIN [Subject] sub ON sub.subid = g.subid\n"
                    + "			INNER JOIN Room r ON r.rid = ses.rid\n"
                    + "			INNER JOIN TimeSlot t ON t.tid = ses.tid\n"
                    + "WHERE\n"
                    + "l.lid = ?\n"
                    + "AND ses.[date] >= ?\n"
                    + "AND ses.[date] <= ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, lid);
            stm.setDate(2, from);
            stm.setDate(3, to);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Session session = new Session();
                Lecturer l = new Lecturer();
                Room r = new Room();
                Group g = new Group();
                TimeSlot t = new TimeSlot();
                Subject sub = new Subject();

                session.setId(rs.getInt("sesid"));
                session.setDate(rs.getDate("date"));
                session.setIndex(rs.getInt("index"));
                session.setAttandated(rs.getBoolean("attanded"));

                l.setId(rs.getInt("lid"));
                l.setName(rs.getString("lname"));
                session.setLecturer(l);

                g.setId(rs.getInt("gid"));
                g.setName(rs.getString("gname"));
                session.setGroup(g);

                sub.setId(rs.getInt("subid"));
                sub.setName(rs.getString("subname"));
                g.setSubject(sub);

                r.setId(rs.getInt("rid"));
                r.setName(rs.getString("rname"));
                session.setRoom(r);

                t.setId(rs.getInt("tid"));
                t.setDescription(rs.getString("description"));
                session.setTimeslot(t);

                sessions.add(session);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sessions;
    }

    public void updateAttandance(Session model) {
        try {
            con.setAutoCommit(false);
            String sql_update_attanded = "UPDATE [Session]\n"
                    + "   SET [attanded] = 1\n"
                    + " WHERE sesid = ?";
            PreparedStatement stm_update_attanded = con.prepareStatement(sql_update_attanded);
            stm_update_attanded.setInt(1, model.getId());
            stm_update_attanded.executeUpdate();

            //remove old attandances 
            String sql_remove_attandances = "DELETE Attandance\n"
                    + " WHERE sesid = ?";
            PreparedStatement stm_remove_attandances = con.prepareStatement(sql_remove_attandances);
            stm_remove_attandances.setInt(1, model.getId());
            stm_remove_attandances.executeUpdate();

            //add new attandances
            for (Attandance att : model.getAttandances()) {
                String sql_insert_att = "INSERT INTO [Attandance]\n"
                        + "           ([sesid]\n"
                        + "           ,[stdid]\n"
                        + "           ,[present]\n"
                        + "           ,[description],record_time)\n"
                        + "     VALUES\n"
                        + "           (?\n"
                        + "           ,?\n"
                        + "           ,?\n"
                        + "           ,?,GETDATE())";
                PreparedStatement stm_insert_att = con.prepareStatement(sql_insert_att);
                stm_insert_att.setInt(1, model.getId());
                stm_insert_att.setInt(2, att.getStudent().getId());
                stm_insert_att.setBoolean(3, att.isPresent());
                stm_insert_att.setString(4, att.getDescription());
                stm_insert_att.executeUpdate();
            }

            con.commit();
        } catch (SQLException ex) {
            try {
                con.rollback();
            } catch (SQLException ex1) {
                Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex1);
            }
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.setAutoCommit(true);
            } catch (SQLException ex) {
                Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public Session get(int id) {
        try {
            String sql = "SELECT ses.sesid,ses.date,ses.[index],ses.attanded \n"
                    + "	,g.gid,g.gname\n"
                    + "	,sub.subid,sub.subname\n"
                    + "	,l.lid,l.lname\n"
                    + "	,r.rid,r.rname\n"
                    + "	,t.tid,t.[description]\n"
                    + "FROM [Session] ses\n"
                    + "	INNER JOIN [Group] g ON g.gid = ses.gid\n"
                    + "	INNER JOiN Room r ON r.rid = ses.rid\n"
                    + "	INNER JOIN TimeSlot t ON t.tid = ses.tid\n"
                    + "	INNER JOIN Lecturer l ON l.lid = ses.lid\n"
                    + "	INNER JOIN [Subject] sub ON sub.subid = g.subid\n"
                    + "WHERE ses.sesid = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Session ses = new Session();
                ses.setId(rs.getInt("sesid"));
                ses.setDate(rs.getDate("date"));
                ses.setIndex(rs.getInt("index"));
                ses.setAttandated(rs.getBoolean("attanded"));
                Group g = new Group();
                ses.setGroup(g);
                g.setId(rs.getInt("gid"));
                g.setName(rs.getString("gname"));
                Room r = new Room();
                ses.setRoom(r);
                r.setId(rs.getInt("rid"));
                r.setName(rs.getString("rname"));
                TimeSlot t = new TimeSlot();
                ses.setTimeslot(t);
                t.setId(rs.getInt("tid"));
                t.setDescription(rs.getString("description"));
                Lecturer l = new Lecturer();
                ses.setLecturer(l);
                l.setId(rs.getInt("lid"));
                l.setName(rs.getString("lname"));
                Subject sub = new Subject();
                g.setSubject(sub);
                sub.setId(rs.getInt("subid"));
                sub.setName(rs.getString("subname"));
                return ses;
            }
        } catch (SQLException ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
