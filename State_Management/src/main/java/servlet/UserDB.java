package servlet;

import java.util.ArrayList;

public class UserDB {
    private ArrayList<User> users=new ArrayList<User>();

    public UserDB() {
        users.add(new User("test","123"));
        users.add(new User("admin","123"));
        users.add(new User("admin","123"));

    }

    public ArrayList<User> getUsers() {
        return users;
    }

    public void addUser(User user){
        users.add(user);
    }


    public boolean checkUser(User newUser){
        if(users.contains(newUser))
            return true;
        else
            return false;

    }


}
