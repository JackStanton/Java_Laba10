package ru.dstu.lab11.utils;

import ru.dstu.lab11.entities.Student;

import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

public class FileUtil implements Serializable{
    private final String PATH = "D:\\laba11\\";

    public FileUtil() {
    }

    private Student getStudent(String fileName) {
        Student student = null;
        try {
            File file = new File(PATH+fileName);
            FileReader fr = new FileReader(file);
            BufferedReader reader = new BufferedReader(fr);
            String name = reader.readLine();
            String surname = reader.readLine();
            String middleName = reader.readLine();
            String subject = reader.readLine();
            String mark = reader.readLine();
            student = new Student(name,surname,middleName,subject,mark);
            reader.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return student;
    }

    public void writeStudent(Student student) throws IOException {
        String fileName = student.getSurname() + "_" +
                student.getName() + "_" +
                student.getMiddleName();
        File file = new File(PATH+fileName);
        FileWriter fileWriter = new FileWriter(file);
        fileWriter.write(student.getName());
        fileWriter.write("\n");
        fileWriter.write(student.getSurname());
        fileWriter.write("\n");
        fileWriter.write(student.getMiddleName());
        fileWriter.write("\n");
        fileWriter.write(student.getSubject());
        fileWriter.write("\n");
        fileWriter.write(student.getMark());
        fileWriter.write("\n");
        fileWriter.flush();
        fileWriter.close();
    }

    public List<File> getFileList(){
        File dir = new File(PATH);
        return Arrays.asList(Objects.requireNonNull(dir.listFiles()));
    }

    public List<Student> getStudents(){
        List<File> files = getFileList();
        List<Student> students = new ArrayList<>();
        for (File f: files) {
            Student student = getStudent(f.getName());
            students.add(student);
        }
        return students;
    }
}
