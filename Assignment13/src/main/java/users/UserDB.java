package users;

import java.util.ArrayList;

public class UserDB {
    private ArrayList<User> users=new ArrayList<User>();

    public UserDB() {
        users.add(new User("test","test"));
        users.add(new User("admin","admin"));
        users.add(new User("admin","root"));

    }

    public UserDB(ArrayList<User> users) {
        this.users = users;
    }

    public ArrayList<User> getUsers() {
        return users;
    }
//
//    public void setUsers(ArrayList<User> users) {
//        this.users = users;
//    }

    public void addUser(User user){
        users.add(user);
    }


    public boolean checkUser(User newUser){
        if(users.contains(newUser))
            return true;
        else
            return false;

//        if(users.indexOf(newUser)<0)
//            return false;
//        else
//            return true;

//        for(User user: users){
//            if(user.equals(newUser))
//                return true;
//        }
//        return false;
    }


}
