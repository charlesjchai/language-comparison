import java.io.BufferedWriter;
import java.io.OutputStreamWriter;
import java.io.IOException;

public class prime {
    private static final int N = 1048576;
    public static void main(String[] args) throws IOException {
        boolean[] arr = new boolean[N];
        arr[0] = true;
        arr[1] = true;
        for (int prime = 2; prime * prime < N; prime++) {
            if (!arr[prime]) {
		for (int i = prime * prime; i < N; i += prime) {
		    arr[i] = true;
		}
	    }
        }
        BufferedWriter log = new BufferedWriter(new OutputStreamWriter(System.out));
        for (int i = 2; i < N; i++) {
            if (!arr[i]) {
                log.write(String.valueOf(i) + " ");
            }
        }
        log.write('\n');
        log.flush();
    }
}
