package com.tlovrekovic.corExample.entity;

public class SeniorSkills extends CodingSkills{
    private static final double SKILL = BASE*80;

    @Override
    public void checkComplexity(Task task){
        if (task.getComplexity() <= SKILL){
            System.out.println("The Senior will do it");
        }else if (nextInLine !=null){
            nextInLine.checkComplexity(task);
        }
        else{
            System.out.println("Tomislav will do it :P");
        }

    }
}
