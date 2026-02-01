package com.SMS.dao;

import com.SMS.model.Fee;
import java.util.List;

public interface FeeDao {
    boolean addFee(Fee fee);
    List<Fee> getAllFees(); // Added this
}