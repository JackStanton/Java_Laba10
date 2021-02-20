package ru.dstu.lab11.models;

import ru.dstu.lab11.entities.Student;

import java.util.ArrayList;
import java.util.List;

public class StudentModel {
    private static final StudentModel instance = new StudentModel();

    private final List<Student> model;

    public static StudentModel getInstance() {
        return instance;
    }

    private StudentModel() {
        model = new ArrayList<>();
    }

    public void add(Student student) {
        model.add(student);
    }

    public List<Student> list() {
        return model;
    }
}