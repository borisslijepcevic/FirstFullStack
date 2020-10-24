package beans;

public class Reservation {
    private String res_id;
    private String r_id;
    private String id;
    private String arrival;
    private String away;
    
    public Reservation(){
        res_id = "";
        r_id = "";
        id = "";
        arrival = "";
        away = "";
    }
    public Reservation(String res_id,String r_id, String id, String arrival, String away){
        this.res_id = res_id;
        this.r_id = r_id;
        this.id = id;
        this.arrival = arrival;
        this.away = away;
    }
    public String getRes_id(){
        return res_id;
    }
    public void setRes_id(String res_id){
        this.res_id = res_id;
    }
    public String getR_id(){
        return r_id;
    }
    public void setR_id(String r_id){
        this.r_id = r_id;
    }
    public String getId(){
        return id;
    }
    public void setId(String id){
        this.id = id;
    }
    public String getArrival(){
        return arrival;
    }
    public void setArrival(String arrival){
        this.arrival = arrival;
    }
    public String getAway(){
        return away;
    }
    public void setAway(String away){
        this.away = away;
    }
}




