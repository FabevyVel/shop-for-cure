package com.cts.model;

import java.util.List;

public class DataList {

    private List<Disease> diseaseList;
    private List<Fruit> fruitList;
    private List<Herb> herbList;

    public List<Disease> getDiseaseList() {
        return diseaseList;
    }

    public void setDiseaseList(List<Disease> diseaseList) {
        this.diseaseList = diseaseList;
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
