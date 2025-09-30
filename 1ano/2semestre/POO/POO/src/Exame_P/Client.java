package Exame_P;

import Exame_P.enums.ClientType;

public class Client {
    private int id;
    private String name;
    private ClientType socio;
    public Client(int id, String name, ClientType socio) {
        this.id = id;
        this.name = name;
        this.socio = socio;
    }
    //setters
    public int getId() {
        return id;
    }
    public String getName() {
        return name;
    }
    public ClientType getSocio() {
        return socio;
    }
    //setters
    public void setId(int id) {
        this.id = id;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setSocio(ClientType socio) {
        this.socio = socio;
    }

    
    
    
}
