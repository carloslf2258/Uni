package aula06.Ex2;

import aula06.Ex1.Pessoa;

public class Contacto {
    private int id;
    private Pessoa person;
    private String email;
    private String phone;

    private static int currentId = 1;

    //CONTRUTOR DE CONTACTO (usa classe pessoa)
    public Contacto(Pessoa person, String email, String phone) {
        if (!valid_email(email) || !valid_phone(phone)){
            throw new IllegalArgumentException("Telefone ou email inválidos");
        } else {
        this.id = Contacto.currentId++;
        this.setPessoa(person);
        this.setEmail(email);
        this.setPhone(phone);}
    }
    //Contrutor caso só se introduza o email
    public Contacto(Pessoa person, String email){
        this(person, email, null);
    }

//GETTERS ID, Pessoa, Email e Phone (respetivamente)
    public int getId() { return id; }
    public Pessoa getPessoa() {return person; }
    public String getEmail() { return email;}
    public String getPhone() { return phone; }
    
//SETTERS Pessoa, Email e Phone (respectivamente)
    public void setPessoa(Pessoa person) {
        if (person == null)
            throw new IllegalArgumentException("Dados de pessoa inválidos");
        this.person = person;
    }

    public void setEmail(String email) {
        if (!valid_email(email))
            throw new IllegalArgumentException("Email inválido");
        this.email = email;
    }

    public void setPhone(String phone) {
        if (!valid_phone(phone))
            throw new IllegalArgumentException("Nº de telemóvel inválido");
        this.phone = phone;
    }

//Validar email
    public boolean valid_email(String email){
        if (email == null || email.isEmpty()){
            return false;
            //throw new IllegalArgumentException("Email inválido (vazio)");
        } else if (!email.matches("^[a-zA-Z_0-9.]+@[a-zA-Z_0-9.]+\\.[a-zA-Z_0-9]+$")){
            return false;
        } else {
            return true;
        }
    }
//Validar Nº de telefone
    public boolean valid_phone(String phone){
        return (phone.matches("^9[0-9]{8}$")); }


    @Override
    public String toString() {
        return String.format("ID: %d%nPessoa: %s%nEmail: %s%nTelefone: %s", this.id, this.person, this.email, this.phone);
    }
}
    

