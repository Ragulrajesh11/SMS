package com.SMS.DAOimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.SMS.connectors.DBConnection;
import com.SMS.dao.StudentDao;
import com.SMS.model.Student;

public class StudentDaoImpl implements StudentDao {

    // ✅ INSERT
    @Override
    public boolean addStudent(Student s) {

        String sql = "INSERT INTO student "
                   + "(firstName, lastName, gender, dob, phone, year, address, dept, email) "
                   + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, s.getFirstName());
            ps.setString(2, s.getLastName());
            ps.setString(3, s.getGender());
            ps.setString(4, s.getDob());
            ps.setString(5, s.getPhone());
            ps.setInt(6, s.getYear());
            ps.setString(7, s.getAddress());
            ps.setString(8, s.getDepartment());
            ps.setString(9, s.getEmail());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // ✅ GET BY ID  (🔥 FIXED)
    @Override
    public Student getStudentById(int id) {
        Student s = null;

        String sql = "SELECT * FROM student WHERE id=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                s = new Student();
                s.setId(rs.getInt("id"));
                s.setFirstName(rs.getString("firstName"));
                s.setLastName(rs.getString("lastName"));
                s.setGender(rs.getString("gender"));
                s.setDob(rs.getString("dob"));
                s.setPhone(rs.getString("phone"));
                s.setYear(rs.getInt("year"));
                s.setAddress(rs.getString("address"));
                s.setDepartment(rs.getString("dept"));  // 🔥 ADDED
                s.setEmail(rs.getString("email"));      // 🔥 ADDED
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return s;
    }

    // ✅ GET ALL
    @Override
    public List<Student> getAllStudents() {

        List<Student> list = new ArrayList<>();

        String sql = "SELECT * FROM student";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Student s = new Student();

                s.setId(rs.getInt("id"));
                s.setFirstName(rs.getString("firstName"));
                s.setLastName(rs.getString("lastName"));
                s.setGender(rs.getString("gender"));
                s.setDob(rs.getString("dob"));
                s.setPhone(rs.getString("phone"));
                s.setYear(rs.getInt("year"));
                s.setAddress(rs.getString("address"));
                s.setDepartment(rs.getString("dept"));
                s.setEmail(rs.getString("email"));

                list.add(s);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // ✅ UPDATE  (🔥 FIXED)
    @Override
    public boolean updateStudent(Student s) {
        boolean status = false;

        String sql = "UPDATE student SET firstName=?, lastName=?, gender=?, dob=?, phone=?, year=?, address=?, dept=?, email=? WHERE id=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, s.getFirstName());
            ps.setString(2, s.getLastName());
            ps.setString(3, s.getGender());
            ps.setString(4, s.getDob());
            ps.setString(5, s.getPhone());
            ps.setInt(6, s.getYear());
            ps.setString(7, s.getAddress());
            ps.setString(8, s.getDepartment()); // 🔥 ADDED
            ps.setString(9, s.getEmail());      // 🔥 ADDED
            ps.setInt(10, s.getId());

            status = ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    // ✅ DELETE
    @Override
    public boolean deleteStudent(int id) {
        boolean status = false;

        String sql = "DELETE FROM student WHERE id=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            status = ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}
