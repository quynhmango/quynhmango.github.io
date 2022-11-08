/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dal.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attandance;
import model.Session;
import model.Student;

/**
 *
 * @author ASUS
 */
public class AttandanceDBContext {

    Connection con;

    public static void main(String[] args) {
        AttandanceDBContext adao = new AttandanceDBContext();
    }

    public AttandanceDBContext() {
        try {
            DBContext db = new DBContext();
            con = db.getConnection();
            System.out.println("ok");
        } catch (Exception e) {
            System.out.println("fail : " + e);
        }
    }

    public ArrayList<Attandance> getAttsBySessionId(int sesid) {
        ArrayList<Attandance> atts = new ArrayList<>();
        try {
            String sql = "SELECT std.stdid,std.stdname\n"
                    + "	,ses.sesid\n"
                    + "	,ISNULL(a.present,0) present,ISNULL(a.[description],'') [description]\n"
                    + "			FROM [Session] ses\n"
                    + "			INNER JOIN [Group] g ON ses.gid = g.gid\n"
                    + "			INNER JOIN Student_Group sg ON g.gid = sg.gid\n"
                    + "			INNER JOIN Student std ON std.stdid = sg.stdid\n"
                    + "			LEFT JOIN Attandance a ON a.sesid = ses.sesid AND std.stdid = a.stdid\n"
                    + "WHERE ses.sesid = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, sesid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Attandance att = new Attandance();
                Student s = new Student();
                att.setStudent(s);
                Session ses = new Session();
                att.setSession(ses);
                att.setPresent(rs.getBoolean("present"));
                att.setDescription(rs.getString("description"));
                s.setId(rs.getInt("stdid"));
                s.setName(rs.getString("stdname"));
                ses.setId(sesid);
                atts.add(att);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AttandanceDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return atts;
    }

    public void addAttended(Attandance att) {
        String sql = "INSERT INTO [dbo].[Attandance]\n"
                + "           ([aid]\n"
                + "           ,[sesid]\n"
                + "           ,[stdid]\n"
                + "           ,[present]\n"
                + "           ,[description])\n"
                + "     VALUES\n"
                + "           (? \n"
                + "           ,? \n"
                + "           ,? \n"
                + "           ,? \n"
                + "           ,? )";
        try {
            //tạo khay chứa câu lệnh sql 
            PreparedStatement pre = con.prepareStatement(sql);
            // sét giá trị cho dấu ?
            pre.setInt(1, att.getId());
            //pre.setS
        } catch (Exception e) {
            //neu ma loi thi hien ra
            e.printStackTrace();
        }

    }

}
