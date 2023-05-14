package demo;

import org.springframework.beans.factory.BeanNameAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

@Component
@Scope(scopeName = "prototype")
public class Doctor implements Staff , BeanNameAware {
    @Override
    public String toString(){
        return "Doctor{"+
                "qualificiation: "+ qualification +'\''+
                '}';
    }
    private String qualification;
    public void assist(){
        System.out.println("Doctor is assisting");
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    @Override
    public void setBeanName(String s) {
        System.out.println("Set Bean name method is called");
    }
    @PostConstruct
    public void postConstruct(){
        System.out.println("Post Construct method is called.");
    }
}
