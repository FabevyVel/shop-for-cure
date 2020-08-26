package com.cts.dao;

import com.cts.model.Disease;
import com.cts.model.Fruit;
import com.cts.model.Herb;
import com.cts.model.Remedy;

public interface AdminDao {
    void addDisease(Disease disease);
    void addFruit(Fruit fruit);
    void addHerb(Herb herb);
    void addRemedy(Remedy remedy);

}
