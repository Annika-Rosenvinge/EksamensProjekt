package business.entities;

/*
    Denne klasse skal indeholde de samme attributer som "material" i databasen
    "Material" bliver brugt som objekt i de tilhørende Facade, Mapper og Command klasse
    Get'terne bliver brugt i MaterialMapper
*/

//DO NOT CHANGE


public class Material {
    private int id;
    private String name;
    private int partsPrUnit ;
    private String unit;
    private double price;

    public Material (String name, int partsPrUnit, String unit, double price){
        this.name = name;
        this.partsPrUnit = partsPrUnit;
        this.unit = unit;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPartsPrUnit() {
        return partsPrUnit;
    }

    public void setPartsPrUnit(int partsPrUnit) {
        this.partsPrUnit = partsPrUnit;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}