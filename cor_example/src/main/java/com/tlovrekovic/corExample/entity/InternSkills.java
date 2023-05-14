package com.tlovrekovic.corExample.entity;
public class InternSkills extends CodingSkills {
    private static final double SKILL = BASE*10;

    @Override
    public void checkComplexity(Task task){
        if (task.getComplexity() <= SKILL){
            System.out.println("The Intern will do it");
        }else if (nextInLine !=null){
            nextInLine.checkComplexity(task);
        }

    }
}
