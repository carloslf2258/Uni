package Exame_P;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import Exame_P.enums.ClientType;
import Exame_P.enums.SpaceType;


public class CampingService implements CampingServiceInterface {


    
    Map<Integer, Client> clients = new HashMap<>();

    @Override
    public boolean registerClient(int taxId, String name, ClientType type) {
        if(clients.containsKey(taxId)){
            return false; // Client with the same taxId already exists
        }

        Client newClient = new Client(taxId, name, type);
        clients.put(taxId, newClient);
        return true;
    }

    @Override
    public Client getClient(int taxId) {
        return clients.get(taxId);
    }

    
    List<CampingSpace> campService = new ArrayList<>();

    @Override
    public void addCampingSpace(CampingSpace campingSpace) {
        campService.add(campingSpace);
    }

    @Override
    public void addCampingSpaces(Collection<CampingSpace> campingSpaces) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'addCampingSpaces'");
    }

    @Override
    public boolean checkAvailable(CampingSpace campingSpace, LocalDate startDate, LocalDate endDate) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'checkAvailable'");
    }


    @Override
    public boolean bookCampingSpace(Client client, CampingSpace campingSpace, LocalDate startDate, int duration) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'bookCampingSpace'");
    }

    @Override
    public double calculateTotalCost(CampingSpace campingSpace, int duration) {
        return campingSpace.getCostPerDay()*duration;

    }

    @Override
    public List<String> listBookings() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'listBookings'");
    }

    @Override
    public List<String> listBookings(SpaceType spaceType) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'listBookings'");
    }


    @Override
    public List<CampingSpace> findAvailableCampingSpaces(SpaceType spaceType, LocalDate fromDate, int duration,
            int[] minDimensions) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'findAvailableCampingSpaces'");
    }
    







}
