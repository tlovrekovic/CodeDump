package com.crudproject.crudbackend.db;

import com.crudproject.crudbackend.api.model.Pokemon;
import com.crudproject.crudbackend.api.service.IPokemonService;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Base64;
import java.util.List;

@SpringBootApplication(scanBasePackages = {"com.crudproject.crudbackend.api", "com.crudproject.crudbackend.db"})
public class SeedDB {
    @Autowired
    private IPokemonService service;
    private static class PokemonListEntry{
        public String url;
    }
    private static class PokemonListResponse{
        public List<SeedDB.PokemonListEntry> results;
    }
    private static class PokemonImage{
        public String front_default;
        public String back_default;
    }
    private static class PokemonEntry{
        public String name;
        public SeedDB.PokemonImage sprites;
    }
    public static void main (String[] args){
        SpringApplication.run(SeedDB.class,args);

    }
    @Bean
    InitializingBean seed(){
        return()->{
            RestTemplate restTemplate = new RestTemplate();
            PokemonListResponse plr =restTemplate.getForObject("https://pokeapi.co/api/v2/pokemon/?limit=10",PokemonListResponse.class);
            plr.results.forEach(p ->{
                PokemonEntry entry = restTemplate.getForObject(p.url , PokemonEntry.class);
                String name = entry.name;
                String imagefront = getBase64(entry.sprites.front_default);
                String imageback = getBase64(entry.sprites.back_default);

                Pokemon pokemon = new Pokemon(name,imagefront,imageback,0);
                service.create(pokemon);
            });
        };
    }

    private String getBase64(String url){
        try {
            URL imageURl = new URL(url);
            URLConnection con = imageURl.openConnection();
            InputStream is = con.getInputStream();
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            byte[] buffer = new byte[1024];
            int read = 0;
            while((read = is.read(buffer,0,buffer.length))!=-1){
                baos.write(buffer,0,read);
            }
            baos.flush();
            return  String.format("data:image/png;base64,%s", Base64.getEncoder().encodeToString(baos.toByteArray()));
        }catch (Exception e){
            return null;
        }

    }
}
