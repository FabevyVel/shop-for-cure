package com.cts.dao;

import com.cts.model.Member;
import com.cts.model.Remedy;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RemedyMapper implements RowMapper<Remedy> {

    @Override
    public Remedy mapRow(ResultSet resultSet, int i) throws SQLException {
        return null;
    }
}
