package pl.sda.jsp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Calculation {
    private int multiplier = 2;
    private String name = "some-name";

    public Calculation() {
        System.out.println("CONSTRUCTOR");
        this.multiplier = 6;
        this.name="some-other-name";
    }

    public int square(int param) {

        return param * param;
    }

    public int multiply(int param) {
        return param * multiplier;
    }

}
