import java.util.*;

public class rainfall {
    public static void main(String args[]) {
        // Use Scanner for file I/O
        Scanner console = new Scanner(System.in);
        int currDay = console.nextInt();

        // declare variables sum and count
        int count = 0;
        int sum = 0;

        // loop until -999 is encountered
        while (currDay != -999) {
            // check that it isn't negative
            if (currDay >= 0) {
                sum += currDay;
                count++;
            }
            currDay = console.nextInt();
        }

        // check divides by 0
        if (count == 0) {
            System.out.println(0);
        } else {
            System.out.println((double)sum / count);
        }
    }
}
