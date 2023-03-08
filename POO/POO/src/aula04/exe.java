package aula04;

public class exe {
    public static void main(String[] args) {
        int[] numeros = new int[5];
        for (int i = 0; i < numeros.length; i++) {
            System.out.print(numeros[i] + " ");
        }
        // Salida: 1 2 3 4 5
        System.out.println();
        // imprimir los elementos del vector con un bucle for-each
        for (int numero : numeros) {
            System.out.print(numero + " ");

    }
}
}
