package com.SMS.DAOimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.SMS.connectors.DBConnection;
import com.SMS.dao.MarksDao;
import com.SMS.model.Marks;

public class MarksDaoImpl implements MarksDao {

    @Override
    public boolean addMarks(Marks m) {
        String sql = "INSERT INTO marks(student_id, subject, mark) VALUES(?, ?, ?)";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, m.getStudentId());
            ps.setString(2, m.getSubject());
            ps.setInt(3, m.getMark());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<Marks> getMarksByStudentId(int studentId) {
        List<Marks> list = new ArrayList<>();
        String sql = "SELECT * FROM marks WHERE student_id = ?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, studentId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(mapRow(rs));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // ✅ FIXED: Added getAllMarks implementation
    @Override
    public List<Marks> getAllMarks() {
        List<Marks> list = new ArrayList<>();
        String sql = "SELECT * FROM marks";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                list.add(mapRow(rs));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // Helper method to keep code clean
    private Marks mapRow(ResultSet rs) throws Exception {
        Marks m = new Marks();
        m.setId(rs.getInt("id"));
        m.setStudentId(rs.getInt("student_id"));
        m.setSubject(rs.getString("subject"));
        m.setMark(rs.getInt("mark"));
        return m;
    }
}