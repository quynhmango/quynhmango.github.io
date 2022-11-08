/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

/**
 *
 * @author ASUS
 */
public class Main {

    public static void main(String[] args) {
        //SubjectDAO sub = new SubjectDAO();
//        p.getPhoneById(1);
//        System.out.println(""+p.getPhoneById(0));
        //String subname = "a";
        //p.getPhoneByName(PhoneName);
        //System.out.println(""+sub.getAll().size());

        //        UserDAO u = new UserDAO();
        //        //u.getUser("admin", "password");
        //        System.out.println(""+ u.getUser("", "password"));

        //da check: true
//        TimeSlotDBContext t = new TimeSlotDBContext();
//        System.out.println(""+t.list().size());
        
        //null
//        LectureDBContext l = new LectureDBContext();
//        System.out.println(""+l.get(2));
        
        //null
        //SessionDBContext s = new SessionDBContext();
        //System.out.println(""+s.get(1));
        
        UsernameDBContext u = new UsernameDBContext();
        String username = "mra";
        String password="123";
        System.out.println(""+u.getUser(username, password));
        
    }
}
