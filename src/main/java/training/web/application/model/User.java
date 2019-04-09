package training.web.application.model;

/**
 * Created by Adnmin on 3/12/2019.
 */
public class User implements Comparable<User> {

    private int id;
    private String login;
    private String password;
    private String name;
    private String surname;
    private String email;
    private Boolean access;

    public User(int id,String login,String password,String name,String surname,String email,Boolean access){
        this.id=id;
        this.login=login;
        this.password=password;
        this.name=name;
        this.surname=surname;
        this.email=email;
        this.access=access;
    }

    public int getId(){
        return id;
    }

    public void setId(int id){
        this.id=id;
    }

    public Boolean getAccess(){
        return access;
    }

    public void setAccess(Boolean access){
        this.access=access;
    }

    public String getLogin(){
        return login;
    }

    public void setLogin(String login){
        this.login=login;
    }

    public String getPassword(){
        return password;
    }

    public void setPassword(String password){
        this.password=password;
    }

    public String getName(){
        return name;
    }

    public void setName(String name){
        this.name=name;
    }

    public String getSurname(){
        return surname;
    }

    public void setSurname(String surname){
        this.surname=surname;
    }

    public String getEmail(){
        return email;
    }

    public void setEmail(String email){
        this.email=email;
    }

    public int compareTo(User user){
        if(this.getSurname().compareTo(user.getSurname())<0)
            return -1;
        else if(this.getSurname().compareTo(user.getSurname())>0)
            return 1;
        else if(this.getName().compareTo(user.getName())<0)
            return -1;
        else if(this.getName().compareTo(user.getName())>0)
            return 1;
        else return 0;
    }
}