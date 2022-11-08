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
import model.Subject;

/**
 *
 * @author ASUS
 */
public class SubjectDAO {

    Connection con;

    public static void main(String[] args) {
        SubjectDAO subdao = new SubjectDAO();
    }

    public SubjectDAO() {
        try {
            DBContext db = new DBContext();
            con = db.getConnection();
            System.out.println("ok");
        } catch (Exception e) {
            System.out.println("fail : " + e);
        }
    }

    public List<Subject> getAll() {
        List<Subject> listSub = new ArrayList<>();
        try {
            String sql = "select *\n"
                    + "from Subject s\n ";
            PreparedStatement pre = con.prepareStatement(sql);
            // chạy câu lệnh và lưu vào bảng tạm
            ResultSet rs = pre.executeQuery();
            //lấy giá trị qua từng dòng tu database
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);

                //Tao model tuong ung
                Subject subj = new Subject(id, name);

                //add list
                listSub.add(subj);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listSub;
    }

}
