package com.tlovrekovic.corExample.entity;

public abstract class CodingSkills {
    protected  static final double BASE = 10;
    protected CodingSkills nextInLine;

    public void setNextInLine(CodingSkills nextInLine){
        this.nextInLine=nextInLine;
    }

    public abstract void checkComplexity(Task complexity);
}
