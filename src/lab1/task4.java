package lab1;

import java.util.Arrays;
import java.util.List;

public class task4 {
    public static void main(String[] args) {
        task4 t = new task4();
        System.out.println(t.length(Arrays.asList(1,2,3)));
    }

    public int length(List l){
        return l.size();
    }
}
