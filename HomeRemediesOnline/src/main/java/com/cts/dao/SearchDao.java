package com.cts.dao;

import com.cts.model.Disease;
import com.cts.model.Fruit;
import com.cts.model.Herb;
import com.cts.model.Remedy;

import java.util.List;

public interface SearchDao {
    Remedy searchRemedyByDiseaseName(String diseaseName);
    List<Disease> searchDiseaseByHerbName(String herbName);
    List<Disease> searchDiseaseByFruitName(String fruitName);
    List<Disease> getAllDiseases(String searchTerm);
    List<Herb> getAllHerbs(String searchTerm);
    List<Fruit> getAllFruits(String searchTerm);
}
