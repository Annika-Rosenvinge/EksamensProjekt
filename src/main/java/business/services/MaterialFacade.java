package business.services;

import business.entities.Material;
import business.exceptions.UserException;
import business.persistence.Database;
import business.persistence.MaterialMapper;

public class MaterialFacade {

    private MaterialMapper materialMapper;

    public MaterialFacade (Database database){
        materialMapper = new MaterialMapper(database);
    }

    public Material updateMaterialPrice(String name,int partsPrUnit, String unit, double price) throws UserException{
        Material material = new Material(name,partsPrUnit, unit, price);
        materialMapper.updateMaterialPrice(material);
        return material;
    }

    public Material insertMaterial(String name, int partsPrUnit, String unit, double price) throws UserException{
        Material material = new Material(name, partsPrUnit, unit, price);
        materialMapper.insertMaterial(material);
        return material;
    }
}
