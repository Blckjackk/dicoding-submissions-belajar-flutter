package blackjack.project.generic;

public class MyData<GenericParam> {
    private GenericParam data;

    public MyData(GenericParam data) {
        this.data = data;
    }

    public GenericParam getData() {
        return data;
    }

    public void setData(GenericParam data) {
        this.data = data;
    }
}
