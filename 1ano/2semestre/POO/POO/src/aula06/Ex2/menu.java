package aula06.Ex2;
import java.util.Scanner;

import aula05.DateYMD;
import aula06.Ex1.Pessoa;

public class menu {
    private static final Scanner sc = new Scanner(System.in);
    private static Contacto[] contacts;

    public static void main(String[] args) {
        while (true) {
            System.out.println("MENU (opções):");
            System.out.println("1. Inserir contacto");
            System.out.println("2. Alterar contacto");
            System.out.println("3. Apagar contacto");
            System.out.println("4. Procurar contacto");
            System.out.println("5. Listar contactos");
            System.out.println("0. Sair");
            String op = sc.nextLine();

            switch(op) {
                //INSERIR CONTACTO
                case "1" -> {
                    System.out.print("Insira o nome: ");
                    String name = sc.nextLine();
                    System.out.print("Insira o cc (números): ");
                    //int cc = sc.nextInt();  VER: Por que não?
                    String ccStr = sc.nextLine();
                    int cc = Integer.parseInt(ccStr);
                    System.out.print("Insira a data de nascimento (formato: dd-mm-yyyy): ");
                    //Faz-se o split da data y coloca-se os dados transformados a int na classe DateYMD
                    String DataNascString = sc.nextLine();
                    String[] DataNascParts = DataNascString.split("-");
                    DateYMD DataNasc = new DateYMD(Integer.parseInt(DataNascParts[0]),Integer.parseInt(DataNascParts[1]),Integer.parseInt(DataNascParts[2]));
                    System.out.print("Insira o email: ");
                    String email = sc.next();
                    System.out.print("Insira o telefone: ");
                    String phone = sc.nextLine();

                    Pessoa person = new Pessoa(name, cc, DataNasc);
                
                    Contacto contact = new Contacto(person, email, phone);
                    
                    //Ver se a pessoa já existe 
                    if (contacts == null) {
                        contacts = new Contacto[1];
                        contacts[0] = contact;
                    } else {
                        if (checkIfContactExists(cc)) break;
                        Contacto[] newContacts = new Contacto[contacts.length + 1];
                        System.arraycopy(contacts, 0, newContacts, 0, contacts.length);
                        newContacts[contacts.length] = contact;
                        contacts = newContacts;
                    }



                }
                //ALTERAR CONTACTO
                case "2" -> {
                    System.out.print("Insira o nome, email ou telefone do contacto que pretende alterar: ");
                    String query = sc.nextLine();
                    int[] indexes = searchContactsIndex(query);
                    System.out.printf("Contactos encontrados: %d%n", indexes.length);

                    if (indexes.length == 0) {
                        System.out.println("Não foram encontrados contactos com esse nome, email ou telefone");
                    } else if (indexes.length == 1) {
                        System.out.printf("Alterando contacto: %s%n", contacts[indexes[0]]);
                        System.out.print("Insira o novo telefone: ");
                        String phone = sc.nextLine();
                        System.out.print("Insira o novo email: ");
                        String email = sc.nextLine();
                        contacts[indexes[0]].setPhone(phone);
                        contacts[indexes[0]].setEmail(email);
                    } else {
                        Contacto contact = selectContact(indexes);
                        System.out.printf("Alterando contacto: %s%n", contact);
                        System.out.print("Insira o novo telefone: ");
                        String phone = sc.nextLine();
                        System.out.print("Insira o novo email: ");
                        String email = sc.nextLine();
                        contact.setPhone(phone);
                        contact.setEmail(email);
                    }

                }
                //APAGAR/RETIRAR CONTACTO
                case "3" -> {
                    System.out.print("Insira o nome, email ou telefone do contacto que pretende alterar: ");
                    String query = sc.nextLine();
                    int[] indexes = searchContactsIndex(query);
                    System.out.printf("Contactos encontrados: %d%n", indexes.length);

                    if (indexes.length == 0) {
                        System.out.println("Não foram encontrados contactos com esse nome, email ou telefone");
                    } else if (indexes.length == 1) {
                        System.out.printf("Apagando contacto: %s%n", contacts[indexes[0]]);
                        Contacto[] newContacts = new Contacto[contacts.length - 1];
                        System.arraycopy(contacts, 0, newContacts, 0, indexes[0]);
                        System.arraycopy(contacts, indexes[0] + 1, newContacts, indexes[0], contacts.length - indexes[0] - 1);
                        contacts = newContacts;
                    } else {
                        Contacto contact = selectContact(indexes);
                        System.out.printf("Apagando contacto: %s%n", contact);
                        Contacto[] newContacts = new Contacto[contacts.length - 1];
                        System.arraycopy(contacts, 0, newContacts, 0, contact.getId());
                        System.arraycopy(contacts, contact.getId() + 1, newContacts, contact.getId(), contacts.length - contact.getId() - 1);
                        contacts = newContacts;
                    }

                }
                //PROCURAR CONTACTO
                case "4" -> {
                    System.out.print("Insira o nome, email ou telefone do contacto que pretende alterar: ");
                    String query = sc.nextLine();
                    int[] indexes = searchContactsIndex(query);
                    System.out.printf("Contactos encontrados: %d%n", indexes.length);

                    if (indexes.length == 0) {
                        System.out.println("Não foram encontrados contactos com esse nome, email ou telefone");
                    } else if (indexes.length == 1) {
                        System.out.println(contacts[indexes[0]]);
                    } else {
                        for (int index : indexes)
                            System.out.printf("%s%n", contacts[index]);
                    }
                    System.out.println();

                }
                //LISTAR CONTACTO
                case "5" -> {
                    for (Contacto contact : contacts)
                        System.out.println(contact);
                    System.out.println();
                }
                //SAIR DO MENU
                case "0" -> {
                    sc.close();
                    System.exit(0);
                }
                default -> System.out.println("Opção inválida");
            }
        }
    }
    //Funções auxiliares

    public static boolean checkIfContactExists(int cc) {
        for (Contacto c : contacts) {
            if (c.getPessoa().getCC() == cc) {
                System.out.print("Já existe um contacto para essa pessoa, pretende criar um novo? (S/N): ");
                String resposta = sc.nextLine();
                return resposta.equals("S");
            }
        }
        return true;
    }



    private static int[] searchContactsIndex(String query) {
        int[] indexes = new int[contacts.length];
        int index = 0;
        for (int i = 0; i < contacts.length; i++) {
            if (contacts[i].getPessoa().getName().contains(query) || contacts[i].getEmail().contains(query) || contacts[i].getPhone().contains(query)) {
                indexes[index] = i;
                index++;
            }
        }
        return indexes;
    }

    private static Contacto selectContact(int[] indexes) {
        System.out.println("Foram encontrados vários contactos com esse nome, email ou telefone, selecione um:");
        for (int index : indexes)
            System.out.printf("%s%n", contacts[index]);

        Contacto contact;
        do {
            System.out.print("Insira o ID do contacto que pretende alterar: ");
            int index = sc.nextInt();
            contact = searchContactById(index);
        } while (contact == null);

        return contact;
    }

    private static Contacto searchContactById(int id) {
        for (Contacto contact : contacts) {
            if (contact.getId() == id) return contact;
        }
        return null;
    }
















}