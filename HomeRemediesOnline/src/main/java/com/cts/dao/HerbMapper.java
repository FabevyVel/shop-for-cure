package com.cts.dao;

import com.cts.model.Herb;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class HerbMapper implements RowMapper<Herb> {
    @Override
    public Herb mapRow(ResultSet resultSet, int i) throws SQLException {
        Herb herb = new Herb();
        herb.setHerbId(resultSet.getInt(1));
        herb.setHerbName(resultSet.getString("herb_name"));
        herb.setHerbCost(resultSet.getDouble("herb_cost"));
        herb.setHerbDescription(resultSet.getString("herb_description"));
        herb.setHerbQuantity(resultSet.getInt("herb_qty"));
        return herb;
    }
}
