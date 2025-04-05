package blackjack.project.generic.application;

import blackjack.project.generic.MyData;

public class InvariantApp {

    public static void main(String[] args) {
        /*
         * Invariant adalah kondisi yang selalu benar atau tetap berlaku selama eksekusi
         * dari program atau selama objek berada dalam suatu status tertentu.
         * Invariant digunakan untuk memastikan integritas dan konsistensi objek atau data.
         *
         * Tipe Invariant:
         * - **Class Invariant**: Kondisi yang selalu benar untuk semua objek dalam kelas.
         * - **Loop Invariant**: Kondisi yang tetap benar pada setiap iterasi loop.
         * - **Data Structure Invariant**: Aturan yang harus selalu dipatuhi oleh struktur data,
         *   seperti kondisi pada queue atau stack (misalnya urutan data dalam stack).
         *
         * Contoh:
         * - Sebuah akun bank tidak boleh memiliki saldo negatif (class invariant).
         * - Dalam algoritma pengurutan, urutan elemen yang sudah terurut harus tetap benar
         *   selama eksekusi (loop invariant).
         * - Pada stack, elemen terakhir yang dimasukkan harus menjadi elemen pertama yang keluar
         *   (data structure invariant).
         */

        MyData<String> stringMyData = new MyData<String>("Jack");
        // doIt(stringMyData); EEROORR
        // stringMyData<Object> objectMyData = stringMyData; EERROR


    }

    public static void doIt(MyData<Object> myData){

    }
}
