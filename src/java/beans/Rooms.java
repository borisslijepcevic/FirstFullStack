package beans;

public class Rooms {
    
    private String r_id;
    private String h_id;
    private String name;
    private String town;
    private String state;
    private String roomType;
    
    public Rooms (){
        r_id = "";
        h_id = "";
        name = "";
        town = "";
        state = "";
        roomType = "";
    }
    
    public Rooms (String r_id, String name,String town, String state, String roomType){
        this.r_id = r_id;
        this.name = name;
        this.town = town;
        this.state = state;
        this.roomType = roomType;
    }
    public Rooms (String r_id, String h_id, String roomType){
        this.r_id = r_id;
        this.h_id = h_id;
        this.roomType = roomType;
    }
    
    public String getR_id(){
        return r_id;
    }
    public void setR_id(String r_id){
        this.r_id = r_id;
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
    public String getRoomType(){
        return roomType;
    }
    public void setRoomType(String roomType){
        this.roomType = roomType;
    }
            
}








