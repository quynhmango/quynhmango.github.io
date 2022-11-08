/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dal.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.User;

/**
 *
 * @author ASUS
 */
public class UsernameDBContext {

    Connection con;

    public UsernameDBContext() {
        try {
            DBContext db = new DBContext();
            con = db.getConnection();
            System.out.println("ok");
        } catch (Exception e) {
            System.out.println("fail : " + e);
        }
    }

    public User getUser(String username, String password) {
        User user = null;//để check login

        String sql = "select *\n"
                + "from [user] u\n"
                + "where u.username=? and u.password=?";

        try {
            //tạo khay chứa câu lệnh sql 
            PreparedStatement pre = con.prepareStatement(sql);
            //set gía trị cho dấu ?
            //pre.setInt(1, userid);
            pre.setString(1, username);
            pre.setString(2, password);
            // chạy câu lệnh và lưu vào bảng tạm
            ResultSet rs = pre.executeQuery();
            //lấy giá trị qua từng dòng
            while (rs.next()) {
                int id = rs.getInt(1);
                username = rs.getString(2);
                password = rs.getString(3);
                int lid = rs.getInt(4);

                //tạo model tương ứng
                user = new User(lid, username, password, lid);
            }

        } catch (Exception e) {
            //neu ma loi thi hien ra
            e.printStackTrace();
        }

        return user;

    }

    public List<User> getAll(String username) {
        List<User> list = new ArrayList<>();//để check login

        String sql = "select *\n"
                + "from [user] u\n"
                + "where u.username = ?";

        try {
            //tạo khay chứa câu lệnh sql 
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, username);
            // chạy câu lệnh và lưu vào bảng tạm
            ResultSet rs = pre.executeQuery();
            //lấy giá trị qua từng dòng
            while (rs.next()) {
                username = rs.getString(1);
                String password = rs.getString(2);
                int lid = rs.getInt(3);
                
                //tạo model tương ứng
                User user = new User(-1, username, password, lid);
                list.add(user);

            }

        } catch (Exception e) {
            //neu ma loi thi hien ra
            e.printStackTrace();
        }

        return list;

    }

    public static void main(String[] args) {
        UsernameDBContext dao = new UsernameDBContext();
    }
}
