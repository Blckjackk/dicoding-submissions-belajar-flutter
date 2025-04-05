package blackjack.project.generic.application;

import blackjack.project.generic.Pair;

public class PairApp {
    public static void main(String[] args) {

        Pair<String, Integer> myData = new Pair<String,Integer>("BlackJack", 100);
        System.out.println(myData.getParam1());
        System.out.println(myData.getParam2());
    }
}
