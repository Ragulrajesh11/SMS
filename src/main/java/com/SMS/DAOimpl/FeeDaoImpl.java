package com.SMS.DAOimpl;

import com.SMS.dao.FeeDao;
import com.SMS.model.Fee;
import com.SMS.connectors.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class FeeDaoImpl implements FeeDao {

    @Override
    public boolean addFee(Fee fee) {
        boolean status = false;
        String sql = "INSERT INTO fees(student_id, amount) VALUES(?,?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, fee.getStudentId());
            ps.setDouble(2, fee.getAmount());

            status = ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return status;
    }

    @Override
    public List<Fee> getAllFees() {
        List<Fee> list = new ArrayList<>();
        String sql = "SELECT * FROM fees";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Fee f = new Fee();
                f.setId(rs.getInt("id"));
                f.setStudentId(rs.getInt("student_id"));
                f.setAmount(rs.getDouble("amount"));
                list.add(f);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}