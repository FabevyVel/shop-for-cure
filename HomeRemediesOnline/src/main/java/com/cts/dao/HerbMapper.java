package com.cts.dao;

import com.cts.model.Fruit;
import com.cts.model.Herb;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class HerbMapper implements RowMapper<Herb> {
    @Override
    public Herb mapRow(ResultSet resultSet, int i) throws SQLException {
        Herb herb = new Herb();
        herb.setHerbId(resultSet.getInt(1));
        herb.setHerbName(resultSet.getString(2));
        herb.setHerbDescription(resultSet.getString(3));
        herb.setHerbCost(resultSet.getInt(4));
        herb.setHerbQuantity(resultSet.getInt(5));
        return herb;
    }
}
