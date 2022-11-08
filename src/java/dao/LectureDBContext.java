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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Lecturer;

/**
 *
 * @author ASUS
 */
public class LectureDBContext {

        
    Connection con;

    public static void main(String[] args) {
        LectureDBContext ldao = new LectureDBContext();
    }

    public LectureDBContext() {
        try {
            DBContext db = new DBContext();
            con = db.getConnection();
            System.out.println("ok");
        } catch (Exception e) {
            System.out.println("fail : " + e);
        }
    }
   public Lecturer get(int id) {
        try {
            String sql = "SELECT lid,lname FROM Lecturer WHERE lid = ?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if(rs.next())
            {
                Lecturer l = new Lecturer();
                l.setId(rs.getInt("lid"));
                l.setName(rs.getString("lname"));
                return l;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LectureDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    
}
