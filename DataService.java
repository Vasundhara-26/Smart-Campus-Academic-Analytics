import java.util.ArrayList;
import java.util.List;

public class DataService {
    static class Student {
        int id;
        String name;
        double gpa;

        Student(int id, String name, double gpa) {
            this.id = id;
            this.name = name;
            this.gpa = gpa;
        }
    }

    public static void main(String[] args) {
        List students = new ArrayList<>();
        students.add(new Student(101, "Vasundhara Yadav", 3.85));
        students.add(new Student(102, "Rohan Sharma", 2.40));

        System.out.println("--- Java Backend Service ---");
        for (Student s : students) {
            System.out.println("Student ID: " + s.id + ", Name: " + s.name + ", GPA: " + s.gpa);
        }
    }
}
