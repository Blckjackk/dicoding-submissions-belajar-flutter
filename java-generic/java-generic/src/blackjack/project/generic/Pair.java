package blackjack.project.generic;

public class Pair<T, U> {

    private T param1;
    private U param2;

    public Pair(T param1, U param2) {
        this.param1 = param1;
        this.param2 = param2;
    }

    public T getParam1() {
        return param1;
    }

    public void setParam1(T param1) {
        this.param1 = param1;
    }

    public U getParam2() {
        return param2;
    }

    public void setParam2(U param2) {
        this.param2 = param2;
    }
}
