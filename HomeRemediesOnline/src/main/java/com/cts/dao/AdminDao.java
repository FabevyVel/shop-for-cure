package com.cts.dao;

import com.cts.model.*;

import javax.xml.crypto.Data;

public interface AdminDao {
    void addDisease(Disease disease);

    void addFruit(Fruit fruit);

    void addHerb(Herb herb);

    void addRemedy(String[] diseaseId, String[] fruitId, String[] herbId);

    DataList getAllData();

    DataList getPossibleRemedies(int diseaseId);

}
