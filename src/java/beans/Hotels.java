package beans;

public class Hotels  {
    private String h_id;
    private String name;
    private String town;
    private String state;
    private String phone;
    
    public Hotels (){
        h_id = "";
        name = "";
        town = "";
        state = "";
        phone = "";
    }
    
    public Hotels (String h_id, String name, String town, String state, String phone) {
        
        this.h_id = h_id;
        this.name = name;
        this.town = town;
        this.state = state;
        this.phone = phone;
    }
    public String getH_id(){
        return h_id;
    }
    public void setH_id(String h_id){
        this.h_id = h_id;
    }
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }
    public String getTown(){
        return town;
    }
    public void setTown(String town){
        this.town = town;
    }
    public String getState(){
        return state;
    }
    public void setState(String state){
        this.state = state;
    }
     public String getPhone(){
        return phone;
    }
    public void setPhone(String phone){
        this.phone = phone;
    }
}
