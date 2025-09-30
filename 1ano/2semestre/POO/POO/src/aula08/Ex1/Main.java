package aula08.Ex1;

import aula08.Ex1.Vehicles.*;

import java.util.Scanner;

public class Main {
    private static final Scanner sc = new Scanner(System.in);
    private static VehicleComp[] vehicleComps;

    public static void main(String[] args) {
        while (true) {
            System.out.println("Choose an option\n1 - Create new company\n2 - Delete company\n3 - List companies\n4 - Manage company\n0 - Exit");
            int mainOption = Integer.parseInt(sc.nextLine());
            switch (mainOption) {
                case 0 -> {
                    sc.close();
                    System.exit(0);
                }
                case 1 -> {
                    System.out.print("New company name: ");
                    String name = sc.nextLine();
                    VehicleComp vehicleComp = new VehicleComp(name);

                    if (vehicleComps == null) {
                        vehicleComps = new VehicleComp[1];
                        vehicleComps[0] = vehicleComp;
                    } else {
                        VehicleComp[] newVehicleComps = new VehicleComp[vehicleComps.length + 1];
                        System.arraycopy(vehicleComps, 0, newVehicleComps, 0, vehicleComps.length);
                        newVehicleComps[newVehicleComps.length - 1] = vehicleComp;
                        vehicleComps = newVehicleComps;
                    }
                }
                case 2, 3, 4 -> {
                    for (VehicleComp vehicleComp : vehicleComps)
                        System.out.println(vehicleComp);
                    if (mainOption == 2) {
                        System.out.print("Name of the company to remove: ");
                        String name = sc.nextLine();
                        VehicleComp[] newVehicleComps = new VehicleComp[vehicleComps.length - 1];
                        int index = 0;
                        for (VehicleComp vC : vehicleComps)
                            if (!vC.getName().equals(name))
                                newVehicleComps[index++] = vC;
                        vehicleComps = newVehicleComps;
                    }
                    if (mainOption == 4) {
                        System.out.print("Name of the company to manage: ");
                        String name = sc.nextLine();
                        for (VehicleComp vehicleComp : vehicleComps)
                            if (vehicleComp.getName().equals(name))
                                manageComp(vehicleComp);
                    }
                }
                default -> System.out.println("Invalid option");
            }
        }
    }

    private static void manageComp(VehicleComp vehicleComp) {
        while (true) {
            System.out.println("Choose an option\n1 - List vehicle\n2 - Get vehicle info\n3 - Vehicle with most Km\n4 - Manage vehicle\n5 - Add Vehicle\n6 - Remove vehicle\n0 - Exit");
            int mainOption = Integer.parseInt(sc.nextLine());
            switch (mainOption) {
                case 0 -> {
                    return;
                }
                case 1 -> vehicleComp.listVehicles();
                case 2 -> {
                    System.out.print("Vehicle plate: ");
                    System.out.println(vehicleComp.getVehicleByPlate(sc.nextLine()));
                }
                case 3 -> vehicleComp.printVehicleWithMostKm();
                case 4 -> {
                    System.out.print("Plate of the vehicle to manage: ");
                    String plate = sc.nextLine();
                    Vehicle vehicle = vehicleComp.getVehicleByPlate(plate);
                    manageVehicle(vehicle);
                }
                case 5 -> vehicleComp.addVehicleMenu(sc);
                case 6 -> vehicleComp.removeVehicleMenu(sc);
                default -> System.out.println("Invalid option");
            }
        }
    }

    private static void manageVehicle(Vehicle vehicle) {
        while (true) {
            System.out.println("Choose an option\n1 - Send vehicle on a trip\n2 - Refuel/Recharge\n0 - Exit");
            int mainOption = Integer.parseInt(sc.nextLine());
            switch (mainOption) {
                case 0 -> {
                    return;
                }
                case 1 -> {
                    System.out.print("Km the vehicle is going to travel: ");
                    int km = Integer.parseInt(sc.nextLine());
                    vehicle.trajeto(km);
                    if (vehicle instanceof Car car) {
                        if (car.getEngineType() == EngineType.FUEL) {
                            System.out.print("What fuel level is the car going to be left at: ");
                            int level = Integer.parseInt(sc.nextLine());
                            ((Car) vehicle).encherGasolina(level);
                        } else {
                            System.out.print("What battery percentage is the car going to be left at: ");
                            int battery = Integer.parseInt(sc.nextLine());
                            ((Car) vehicle).carga(battery);
                        }
                    } else if (vehicle instanceof Bus bus) {
                        if (bus.getEngineType() == EngineType.FUEL) {
                            System.out.print("What fuel level is the bus going to be left at: ");
                            int level = Integer.parseInt(sc.nextLine());
                            ((Bus) vehicle).encherGasolina(level);
                        } else {
                            System.out.print("What battery percentage is the bus going to be left at: ");
                            int battery = Integer.parseInt(sc.nextLine());
                            ((Bus) vehicle).carga(battery);
                        }
                    } else if (vehicle instanceof Motorcycle) {
                        System.out.print("What fuel level is the motorcycle going to be left at: ");
                        int level = Integer.parseInt(sc.nextLine());
                        ((Motorcycle) vehicle).encherGasolina(level);
                    } else if (vehicle instanceof Truck) {
                        System.out.print("What fuel level is the truck going to be left at: ");
                        int level = Integer.parseInt(sc.nextLine());
                        ((Truck) vehicle).encherGasolina(level);
                    }
                }
                case 2 -> {
                    if (vehicle instanceof Car car) {
                        if (car.getEngineType() == EngineType.FUEL) {
                            System.out.print("What fuel level are you refueling the car to: ");
                            int level = Integer.parseInt(sc.nextLine());
                            ((Car) vehicle).encherGasolina(level);
                        } else {
                            System.out.print("What battery percentage are you charging the car to: ");
                            int battery = Integer.parseInt(sc.nextLine());
                            ((Car) vehicle).carga(battery);
                        }
                    } else if (vehicle instanceof Bus bus) {
                        if (bus.getEngineType() == EngineType.FUEL) {
                            System.out.print("What fuel level are you refueling the bus to: ");
                            int level = Integer.parseInt(sc.nextLine());
                            ((Bus) vehicle).encherGasolina(level);
                        } else {
                            System.out.print("What battery percentage are you charging the bus to: ");
                            int battery = Integer.parseInt(sc.nextLine());
                            ((Bus) vehicle).carga(battery);
                        }
                    } else if (vehicle instanceof Motorcycle) {
                        System.out.print("What fuel level are you refueling the motorcycle to: ");
                        int level = Integer.parseInt(sc.nextLine());
                        ((Motorcycle) vehicle).encherGasolina(level);
                    } else if (vehicle instanceof Truck) {
                        System.out.print("What fuel level are you refueling the truck to: ");
                        int level = Integer.parseInt(sc.nextLine());
                        ((Truck) vehicle).encherGasolina(level);
                    }
                }
                default -> System.out.println("Invalid option");
            }
        }
    }
}
