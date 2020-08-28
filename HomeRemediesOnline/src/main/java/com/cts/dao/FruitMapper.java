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
        fruit.setFruitName(resultSet.getString(2));
        fruit.setFruitDescription(resultSet.getString(3));
        fruit.setFruitCost(resultSet.getInt(4));
        fruit.setFruitQuantity(resultSet.getInt(5));
        return fruit;
    }
}
