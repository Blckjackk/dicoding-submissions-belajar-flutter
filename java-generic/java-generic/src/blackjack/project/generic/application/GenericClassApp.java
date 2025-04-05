package blackjack.project.generic.application;

import blackjack.project.generic.MyData;

public class GenericClassApp {
    public static void main(String[] args) {

        MyData<String> stringMyData = new MyData<String>("Azzam");
        MyData<Integer> integerMyData = new MyData<Integer>(100);

        String stringValue = stringMyData.getData();
        Integer intergerValue = integerMyData.getData();

        System.out.println(stringValue);
        System.out.println(intergerValue);
    }
}
