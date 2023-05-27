package lab1;

import java.util.ArrayList;
import java.util.List;

public class task1 {
//    private List<Object> single = new ArrayList<>();

    public static void main(String[] args) {
        task1 task1 = new task1();
        System.out.println(task1.singletonFunc("easy"));
//        System.out.println(task1.singletonSingletonFunc("yy"));
//        System.out.println(task1.singletonSingletonFunc("uu"));
    }

    public List singletonFunc(Object o) {
        return List.of(o);
    }

//    public List singletonSingletonFunc(Object o) {
//        if (single.isEmpty()) single = List.of(o);
//        return single;
//    }
}
