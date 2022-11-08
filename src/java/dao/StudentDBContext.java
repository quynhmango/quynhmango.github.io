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
import model.Student;

/**
 *
 * @author ASUS
 */
public class StudentDBContext {
 Connection con;

    public static void main(String[] args) {
        StudentDBContext stddao = new StudentDBContext();
    }

    public StudentDBContext() {
        try {
            DBContext db = new DBContext();
            con = db.getConnection();
            System.out.println("ok");
        } catch (Exception e) {
            System.out.println("fail : " + e);
        }
    }
    public List<Student> getAll() {
        List<Student> list = new ArrayList<Student>();
        String sql = "select *\n"
                + "from Student";
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            // chạy câu lệnh và lưu vào bảng tạm
            ResultSet rs = pre.executeQuery();
            //lấy giá trị qua từng dòng tu database
            while (rs.next()) {
                int stdID = rs.getInt(1);
                String stdName = rs.getString(2);
                
                //Tao model tuong ung
                Student s = new Student();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
