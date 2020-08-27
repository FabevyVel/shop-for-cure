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
        fruit.setFruitCost(resultSet.getDouble(3));
        fruit.setFruitQuantity(resultSet.getInt(4));
        return fruit;
    }
}
