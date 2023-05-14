package com.tlovrekovic.corExample.entity;

public class MidSkills extends CodingSkills{
    private static final double SKILL = BASE*40;

    @Override
    public void checkComplexity(Task task){
        if (task.getComplexity() <= SKILL){
            System.out.println("The Mid will do it");
        }else if (nextInLine !=null){
            nextInLine.checkComplexity(task);
        }
    }
}
