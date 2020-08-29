package com.cts.dao;

import com.cts.model.*;

import javax.xml.crypto.Data;
import java.util.List;

public interface AdminDao {
    void addDisease(Disease disease);

    void addFruit(Fruit fruit);

    void addHerb(Herb herb);

    void addRemedy(String[] diseaseId, String[] fruitId, String[] herbId);

    Member getMemberById(int membership_number);

    void updateMemberById(Member member);

    List<Member> getMembersData();

    DataList getAllData();

    DataList getPossibleRemedies(int diseaseId);

}
