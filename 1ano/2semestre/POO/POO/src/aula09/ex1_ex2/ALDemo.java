package aula09.ex1_ex2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.HashSet;
import java.util.TreeSet;

import aula05.DateYMD;

import java.util.Iterator;

import aula06.Ex1.*;
import aula07.Ex2.*;

//ACABAR FUNÑÇAO COMPARE_TO EN DATEYMD -1 SE SÇAO DIFERENTES, 0 SE SÇAO IGUAIS E ASSIM (VER MELHOR)

public class ALDemo {
    public static void main(String[] args) {
        ArrayList<Integer> c1 = new ArrayList<>();
        for (int i = 10; i <= 100; i+=10) 
            c1.add(i);
        System.out.println("Size: " + c1.size());
        for (int i = 0; i < c1.size(); i++) 
            System.out.println("Elemento: " + c1.get(i));
        ArrayList<String> c2 = new ArrayList<>();
        c2.add("Vento");
        c2.add("Calor");
        c2.add("Frio");
        c2.add("Chuva");
        System.out.println(c2);
        Collections.sort(c2);
        System.out.println(c2);
        c2.remove("Frio"); 
        c2.remove(0);
        System.out.println(c2);
        
        
        //Meu codigo:
        System.out.println();
        //HASHSET:
        Set<Pessoa> c3 = new HashSet<>();
        //Criar pessoas
        Pessoa p1 = new Pessoa("João", 33430, new DateYMD(12, 2, 2002));
        Pessoa p2 = new Pessoa("Maria", 27865, new DateYMD(11, 3, 2003));
        Pessoa p3 = new Pessoa("Pedro", 44465, new DateYMD(1, 2, 2004));
        Pessoa p4 = new Pessoa("Ana", 20284, new DateYMD(21, 12, 2000));
        Pessoa p5 = new Pessoa("Lucas", 35824, new DateYMD(10, 8, 2102));
        //Adicionar pessoas a c3
        c3.add(p1);
        c3.add(p2);
        c3.add(p3);
        c3.add(p4);
        c3.add(p5);
        //Tentar inserir repetido
        c3.add(p5);

        for (Pessoa p : c3)
            System.out.println(p);
        
        System.out.println();

        //Print com Iterator
        Iterator<Pessoa> iterator = c3.iterator();
        while (iterator.hasNext()) {
            Pessoa p = iterator.next();
            System.out.println("Nome: " + p.getName() + ", Idade: " + p.getDataNasc());
        }
        System.out.println();
        //Print sem Iterator
        for (Pessoa p : c3)
            System.out.println("Nome: " + p.getName() + "; Data Nasc: " + p.getDataNasc());
        System.out.println();

        System.out.println("c3: " + c3); //A ordem das pessoas é diferente da ordem inicial (mas não fica em ordem alfabetica)
        System.out.println();

        //TREESET:
        Set<Date> c4 = new TreeSet<>();
        //A ordem no print é a mesma pela qual foram criadas
        Date d1 = new aula07.Ex2.DateYMD(12, 2, 4567);
        Date d2 = new aula07.Ex2.DateYMD(11, 3, 2338);
        Date d3 = new aula07.Ex2.DateYMD(1, 2, 200);
        Date d4 = new aula07.Ex2.DateYMD(1, 2, 4567);
        Date d5 = new aula07.Ex2.DateYMD(1, 2, 1234);

        c4.add(d1);
        c4.add(d2);
        c4.add(d3);
        c4.add(d4);
        c4.add(d5);
        //Com Iterator
        Iterator<Date> iterator2 = c4.iterator();
        while (iterator2.hasNext()) {
            Date d = iterator2.next();
            System.out.println("Dia: " + d.getDay() + ", Mês: " + d.getMonth() + ", Ano: " + d.getYear());
        }
        System.out.println();
        //Sem Iterator
        int k = 1;
        for (Date d : c4){
            System.out.println("Data nº: " + k + ", Dia: " + d.getDay() + ", Mês: " + d.getMonth() + ", Ano: " + d.getYear());
            k++;}








    }
}