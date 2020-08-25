package com.cts.model;

public class Herb {
    private int herbId;
    private String herbName;
    private String herbDescription;
    private int herbQuantity;
    private double herbCost;

    public int getHerbId() {
        return herbId;
    }

    public void setHerbId(int herbId) {
        this.herbId = herbId;
    }

    public String getHerbName() {
        return herbName;
    }

    public void setHerbName(String herbName) {
        this.herbName = herbName;
    }

    public String getHerbDescription() {
        return herbDescription;
    }

    public void setHerbDescription(String herbDescription) {
        this.herbDescription = herbDescription;
    }

    public int getHerbQuantity() {
        return herbQuantity;
    }

    public void setHerbQuantity(int herbQuantity) {
        this.herbQuantity = herbQuantity;
    }

    public double getHerbCost() {
        return herbCost;
    }

    public void setHerbCost(double herbCost) {
        this.herbCost = herbCost;
    }
}
