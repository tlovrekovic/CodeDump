package com.tlovrekovic.SpringBootExample.service;


import com.tlovrekovic.SpringBootExample.entity.Department;
import com.tlovrekovic.SpringBootExample.error.DepartmentNotFoundException;

import java.util.List;

public interface DepartmentService {
    public  Department fetchDepartmentById(Long departmentId) throws DepartmentNotFoundException;

    public Department saveDepartment(Department department);

   public List<Department> fetchDepartmentList();

   public  void deleteDepartmentById(Long departmentId);

   public Department updateDepartment(Long departmentId, Department department);

    public Department fetchDepartmentByName(String departmentName);
}
