package com.cts.model;

import java.util.List;

public class Remedy {
    private int diseaseId;
    private List<Fruit> fruitList;
    private List<Herb> herbList;

    public int getDiseaseId() {
        return diseaseId;
    }

    public void setDiseaseId(int diseaseId) {
        this.diseaseId = diseaseId;
    }

    public List<Fruit> getFruitList() {
        return fruitList;
    }

    public void setFruitList(List<Fruit> fruitList) {
        this.fruitList = fruitList;
    }

    public List<Herb> getHerbList() {
        return herbList;
    }

    public void setHerbList(List<Herb> herbList) {
        this.herbList = herbList;
    }
}
