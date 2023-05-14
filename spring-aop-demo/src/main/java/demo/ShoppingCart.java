package demo;

import org.springframework.stereotype.Component;

@Component
public class ShoppingCart {

    public void checkout(String status){
        //LOGGING
        //AUTHENTICATION AND AUTHORISATION
        //SANITIZE THE DATA
        System.out.println("Checkout Method from ShoppingCart Called");

    }
    public int quantity(){
        return 2;
    }
}
