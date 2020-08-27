package com.cts.dao;

import com.cts.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

public class AdminDaoImpl implements AdminDao {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public void addDisease(Disease disease) {
        String insertQuery = "insert into diseases (disease_name, disease_description) values (?,?)";
        jdbcTemplate.update(insertQuery, disease.getDiseaseName(), disease.getDiseaseDescription());
    }

    @Override
    public void addFruit(Fruit fruit) {
        String insertQuery = "insert into fruits (fruit_name, fruit_description, fruit_qty, fruit_cost) values (?,?,?,?)";
        jdbcTemplate.update(insertQuery, fruit.getFruitName(), fruit.getFruitDescription(), fruit.getFruitQuantity(), fruit.getFruitCost());
    }

    @Override
    public void addHerb(Herb herb) {
        String insertQuery = "insert into herbs (herb_name,herb_description, herb_qty, herb_cost) values (?,?,?,?)";
        jdbcTemplate.update(insertQuery, herb.getHerbName(), herb.getHerbDescription(), herb.getHerbQuantity(), herb.getHerbCost());
    }

    @Override
    public void addRemedy(String[] diseaseId, String[] fruitId, String[] herbId) {
        int diseaseIdentifier = Integer.parseInt(diseaseId[0]);
        if(fruitId!=null) {
            List<Integer> fruitIds = Arrays.stream(fruitId).filter(Objects::nonNull).map(Integer::parseInt).collect(Collectors.toList());
            fruitIds.stream().forEach(fruit -> insertRemedyDetails(diseaseIdentifier, fruit, "F"));
        }
        if(herbId!=null) {
            List<Integer> herbIds = Arrays.stream(herbId).filter(Objects::nonNull).map(Integer::parseInt).collect(Collectors.toList());
            herbIds.stream().forEach(herb -> insertRemedyDetails(diseaseIdentifier, herb, "H"));
        }
    }

    public void insertRemedyDetails(int diseaseId, int fruit_herb_Id, String category) {
        String insertQuery = "insert into remedies (disease_id,fruit_herb_id,category) values (?,?,?)";
        jdbcTemplate.update(insertQuery, diseaseId, fruit_herb_Id, category);
    }

    @Override
    public DataList getAllData(){
        String getDiseaseQuery =  "select * from diseases";
        List<Disease> diseases = jdbcTemplate.query(getDiseaseQuery, new DiseaseMapper());

        String getFruitsQuery = "select * from fruits";
        List<Fruit> fruits = jdbcTemplate.query(getFruitsQuery,new FruitMapper());

        String getHerbsQuery = "select * from herbs";
        List<Herb> herbs = jdbcTemplate.query(getHerbsQuery,new HerbMapper());

        DataList dataList = new DataList();
        dataList.setDiseaseList(diseases);
        dataList.setFruitList(fruits);
        dataList.setHerbList(herbs);
        return dataList;
    }
}
