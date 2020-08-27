package com.cts.dao;

import com.cts.model.*;

public interface AdminDao {
    void addDisease(Disease disease);

    void addFruit(Fruit fruit);

    void addHerb(Herb herb);

    void addRemedy(String[] diseaseId, String[] fruitId, String[] herbId);

    DataList getAllData();

}
