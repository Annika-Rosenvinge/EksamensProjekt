package business.services;

import business.entities.Status;
import business.exceptions.UserException;
import business.persistence.Database;
import business.persistence.StatusMapper;

public class StatusFacade {
    private StatusMapper statusMapper;

    public StatusFacade (Database database){
        statusMapper = new StatusMapper(database);
    }
    public Status newStatus (String orderStatus) throws UserException {
        Status status = new Status(orderStatus);
        statusMapper.newStatus(status);
        return status;
    }

    public void updateStatus (String orderStatus, int orderId) throws UserException{
        statusMapper.updateStatus(orderStatus,orderId);
    }
}
