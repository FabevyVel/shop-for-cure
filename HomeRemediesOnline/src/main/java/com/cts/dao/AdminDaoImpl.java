package com.cts.dao;

import com.cts.model.Disease;
import com.cts.model.Fruit;
import com.cts.model.Herb;
import com.cts.model.Remedy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class AdminDaoImpl implements AdminDao {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public void addDisease(Disease disease) {
        String insertQuery = "insert into diseases (disease_name) values (?)";
        jdbcTemplate.update(insertQuery, disease.getDiseaseName());
    }

    @Override
    public void addFruit(Fruit fruit) {
        String insertQuery = "insert into fruits (fruit_name,fruit_qty,fruit_cost) values (?,?,?)";
        jdbcTemplate.update(insertQuery, fruit.getFruitName(), fruit.getFruitQuantity(), fruit.getFruitCost());
    }

    @Override
    public void addHerb(Herb herb) {
        String insertQuery = "insert into herbs (herb_name,herb_description,herb_qty,herb_cost) values (?,?,?,?)";
        jdbcTemplate.update(insertQuery, herb.getHerbName(), herb.getHerbDescription(), herb.getHerbQuantity(), herb.getHerbCost());
    }

    @Override
    public void addRemedy(Remedy remedy) {
        int diseaseId = remedy.getDiseaseId();
        List<Fruit> fruitList = remedy.getFruitList();
        List<Herb> herbList = remedy.getHerbList();
        fruitList.stream().forEach(fruit -> insertRemedyDetails(diseaseId, fruit.getFruitId(), "F"));
        herbList.stream().forEach(herb -> insertRemedyDetails(diseaseId, herb.getHerbId(), "H"));
    }

    public void insertRemedyDetails(int diseaseId, int fruit_herb_Id, String category) {
        String insertQuery = "insert into remedies (disease_id,fruit_herb_id,category) values (?,?,?)";
        jdbcTemplate.update(insertQuery, diseaseId, fruit_herb_Id, category);
    }
}
