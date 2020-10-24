package beans;

public class Manager {
    
    private String m_id;
    private String h_id;
    private String name;
    private String surname;
    private String username;
    private String password;
    
    public Manager() {
        m_id = "";
        h_id = "";
        name = "";
        surname = "";
        username = "";
        password = "";

    }
    public Manager(String m_id,String h_id, String name, String surname, String username){
        
        this.m_id = m_id;
        this.h_id = h_id;
        this.name = name;
        this.surname = surname;
        this.username = username;
    }

    public String getM_id (){
        return m_id;
    }
    public void setM_id(String m_id){
        this.m_id = m_id;
    }
    public String getH_id (){
        return h_id;
    }
    public void setH_id(String h_id){
        this.h_id = h_id;
    }
    public String getName (){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }
    public String getSurname (){
        return surname;
    }
    public void setSurname(String surname){
        this.surname = surname;
    }
    public String getUsername (){
        return username;
    }
    public void setUsername(String username){
        this.username = username;
    }
    public String getPassword (){
        return password;
    }
    public void setPassword(String password){
        this.password = password;
    }
    
}





