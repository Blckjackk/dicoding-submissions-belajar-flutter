package blackjack.project.generic.application; // Menentukan package tempat class ini berada

import blackjack.project.generic.util.ArrayHelper; // Mengimpor class ArrayHelper dari package util

public class ArrayHelperApp {
    public static void main(String[] args) {

        /*
         * Generic Method adalah metode yang menggunakan parameter tipe (type parameter)
         * sehingga dapat digunakan dengan berbagai jenis data tanpa harus membuat metode terpisah untuk setiap tipe.
         *
         * Penulisan Generic Method:
         * - Gunakan tanda `<T>` sebelum tipe pengembalian (return type).
         * - `T` adalah placeholder untuk tipe data yang akan digunakan.
         * - Metode ini dapat digunakan untuk berbagai tipe data tanpa mengubah implementasi.
         */

        // Membuat array bertipe String
        String[] name = {"Ahmad", "Izzuddin", "Azzam"};

        // Membuat array bertipe Integer
        Integer[] numbers = {30 , 45 , 55, 1, 99};

        // Menghitung jumlah elemen dalam array name
        System.out.println(
                ArrayHelper.<String>count(name) // Memanggil metode count dari ArrayHelper untuk array String
        );

        // Menghitung jumlah elemen dalam array numbers
        System.out.println(
                ArrayHelper.<Integer>count(numbers) // Memanggil metode count dari ArrayHelper untuk array Integer
        );
    }
}
