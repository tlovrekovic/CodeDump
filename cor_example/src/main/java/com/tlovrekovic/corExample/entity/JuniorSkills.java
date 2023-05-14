package com.tlovrekovic.corExample.entity;

public class JuniorSkills extends CodingSkills {
    private static final double SKILL = BASE*20;

    @Override
    public void checkComplexity(Task task){
        if (task.getComplexity() <= SKILL){
            System.out.println("The Junior will do it");
        }else if (nextInLine !=null){
            nextInLine.checkComplexity(task);
        }

    }
}
