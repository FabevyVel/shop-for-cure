package com.cts.dao;

import com.cts.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class SearchDaoImpl implements SearchDao {
    @Autowired
    JdbcTemplate jdbcTemplate;
    DiseaseMapper diseaseMapper = new DiseaseMapper();
    FruitMapper fruitMapper = new FruitMapper();
    HerbMapper herbMapper = new HerbMapper();

    @Override
    public Remedy searchRemedyByDiseaseName(String diseaseName) {
        String sql = "select * from diseases where disease_name = \"" + diseaseName + "\"";

        List<Disease> diseaseList = jdbcTemplate.query(sql, diseaseMapper);
        if(diseaseList.isEmpty()){
            return null;
        }

        Disease disease = diseaseList.get(0);

        sql = "select * from fruits left join remedies on remedies.fruit_herb_id = fruits.fruit_id where " +
                "remedies.category=\"f\" and remedies.disease_id=" + disease.getDiseaseId();

        List<Fruit> fruitList = jdbcTemplate.query(sql, fruitMapper);

        sql = "select * from herbs right join remedies on remedies.fruit_herb_id = herbs.herb_id where " +
                "remedies.category=\"h\" and remedies.disease_id=" + disease.getDiseaseId();

        List<Herb> herbList = jdbcTemplate.query(sql, herbMapper);

//        if(fruitList.isEmpty() && herbList.isEmpty()){
//            return null;
//        }

        Remedy remedy = new Remedy();
        remedy.setDiseaseId(disease.getDiseaseId());
        remedy.setFruitList(fruitList);
        remedy.setHerbList(herbList);

        return remedy;
    }

    @Override
    public List<Disease> searchDiseaseByHerbName(String herbName) {
        String sql = "select * from herbs where herb_name=\"" + herbName + "\"";
        List<Herb> herbList = jdbcTemplate.query(sql, herbMapper);
        Herb herb = !herbList.isEmpty() ? herbList.get(0) : null;
        if(herb==null){
            return null;
        }

        sql = "select * from diseases left join remedies on remedies.disease_id = diseases.disease_id  where " +
                "remedies.category=\"h\" and remedies.fruit_herb_id=\"" + herb.getHerbId() + "\"";

        List<Disease> diseaseList = jdbcTemplate.query(sql, diseaseMapper);
        return diseaseList;
    }

    @Override
    public List<Disease> searchDiseaseByFruitName(String fruitName) {
        String sql = "select * from fruits where fruit_name=\"" + fruitName + "\"";
        List<Fruit> fruitList = jdbcTemplate.query(sql, fruitMapper);
        Fruit fruit = !fruitList.isEmpty() ? fruitList.get(0) : null;
        if(fruit==null){
            return null;
        }
        sql = "select * from diseases left join remedies on remedies.disease_id = diseases.disease_id  where " +
                "remedies.category=\"f\" and remedies.fruit_herb_id=\"" + fruit.getFruitId() + "\"";

        List<Disease> diseaseList = jdbcTemplate.query(sql, diseaseMapper);
        return diseaseList;
    }

    @Override
    public List<Disease> getAllDiseases(String searchTerm) {
        if(searchTerm.isEmpty()){
            return jdbcTemplate.query("select * from diseases", diseaseMapper);
        }else {
            return jdbcTemplate.query("select * from diseases where disease_name like \"%" + searchTerm + "%\"",
                    diseaseMapper);
        }
    }

    @Override
    public List<Herb> getAllHerbs(String searchTerm) {
        if(searchTerm.isEmpty()) {
            return jdbcTemplate.query("select * from herbs", herbMapper);
        }else{
            return jdbcTemplate.query("select * from herbs where herb_name like \"%" + searchTerm + "%\"",
                    herbMapper);
        }
    }

    @Override
    public List<Fruit> getAllFruits(String searchTerm) {
        if(searchTerm.isEmpty()) {
            return jdbcTemplate.query("select * from fruits", fruitMapper);
        }else{
            return jdbcTemplate.query("select * from fruits where fruit_name like \"%" + searchTerm + "%\"",
                    fruitMapper);
        }
    }
}
