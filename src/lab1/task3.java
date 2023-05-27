package lab1;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class task3 {
    public static void main(String[] args) {
        task3 t = new task3();
        System.out.println(t.snoc(new ArrayList<>(Arrays.asList("one", "two")), "three"));
    }

    public List snoc(List<Object> l, Object a){
        l.add(a);
        return l;
    }
}
