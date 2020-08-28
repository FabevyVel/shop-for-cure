package com.cts.dao;

import com.cts.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class SearchDaoImpl implements SearchDao {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public Remedy searchRemedyByDiseaseName(String diseaseName) {
        String sql = "select * from diseases where disease_name=\"" + diseaseName + "\"";

        List<Disease> diseaseList = jdbcTemplate.query(sql, new DiseaseMapper());
        Disease disease = diseaseList.get(0);

        sql = "select * from fruits left join remedies on remedies.fruit_herb_id = fruits.fruit_id where " +
                "remedies.category=\"f\" and remedies.disease_id=" + disease.getDiseaseId();

        List<Fruit> fruitList = jdbcTemplate.query(sql, new FruitMapper());

        sql = "select * from herbs right join remedies on remedies.fruit_herb_id = herbs.herb_id where " +
                "remedies.category=\"h\" and remedies.disease_id=" + disease.getDiseaseId();

        List<Herb> herbList = jdbcTemplate.query(sql, new HerbMapper());
        Remedy remedy = new Remedy();
        remedy.setDiseaseId(disease.getDiseaseId());
        remedy.setFruitList(fruitList);
        remedy.setHerbList(herbList);

        return remedy;
    }

    @Override
    public Disease searchDiseaseByHerbId(String herbId) {
        return null;
    }

    @Override
    public Disease searchDiseaseByFruitId(String fruitId) {
        return null;
    }
}
