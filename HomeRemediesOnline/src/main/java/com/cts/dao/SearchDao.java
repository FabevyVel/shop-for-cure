package com.cts.dao;

import com.cts.model.Disease;
import com.cts.model.Remedy;

public interface SearchDao {
    Remedy searchRemedyByDiseaseName(String diseaseName);
    Disease searchDiseaseByHerbId(String herbId);
    Disease searchDiseaseByFruitId(String fruitId);
}
