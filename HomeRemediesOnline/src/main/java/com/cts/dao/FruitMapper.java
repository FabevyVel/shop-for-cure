package com.cts.dao;

import com.cts.model.Fruit;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class FruitMapper implements RowMapper<Fruit> {
    @Override
    public Fruit mapRow(ResultSet resultSet, int i) throws SQLException {
        Fruit fruit = new Fruit();
        fruit.setFruitId(resultSet.getInt(1));
        fruit.setFruitName(resultSet.getString("fruit_name"));
        fruit.setFruitCost(resultSet.getDouble("fruit_cost"));
        fruit.setFruitQuantity(resultSet.getInt("fruit_qty"));
        fruit.setFruitDescription(resultSet.getString("fruit_description"));
        return fruit;
    }
}
