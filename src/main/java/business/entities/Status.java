package business.entities;

import java.security.PublicKey;

public class Status {
    String status;

    public Status (String status){
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}

