package com.tlovrekovic.SpringBootExample.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.Length;

@Entity
//lombok getteri i setteri
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Department {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long departmentID;

    @NotBlank(message="Please ADD Department Name")
    /*@Length(max=5,min=1)
    @Size(max=10, min=0)
    @Email
    @Positive
    @Negative
    @PositiveOrZero
    @NegativeOrZero
    @FutureOrPresent
    @Past*/
    private String departmentName;
    private String departmentAddress;
    private  String departmentCode;


}
