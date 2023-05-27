package lab1;

import java.util.Arrays;
import java.util.List;

public class task2 {
    public static void main(String[] args) {
        task2 t2 = new task2();
        System.out.println(t2.nullFunc(Arrays.asList("aef", "asd")));
        System.out.println(t2.nullFunc(List.of()));
    }

    public Boolean nullFunc(List l) {
        return l.isEmpty();
    }
}
