package com.tlovrekovic.corExample;

import com.tlovrekovic.corExample.entity.*;

public class Test {
    public static void main(String[] args) {
        CodingSkills intern = new InternSkills();
        CodingSkills junior = new JuniorSkills();
        CodingSkills mid = new MidSkills();
        CodingSkills senior = new SeniorSkills();
        intern.setNextInLine(junior);
        junior.setNextInLine(mid);
        mid.setNextInLine(senior);

        Task task1= new Task(100);
        intern.checkComplexity(task1);
        Task task2 = new Task( 200);
        intern.checkComplexity(task2);
        Task task3 = new Task(400);
        intern.checkComplexity(task3);
        Task task4 = new Task( 800);
        intern.checkComplexity(task4);
        //Task task5 = new Task( 1000);
        //intern.checkComplexity(task5);

    }

}
