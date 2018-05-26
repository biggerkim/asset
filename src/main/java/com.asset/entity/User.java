package  com.asset.entity;
public class User{
    private long username;
    private String password;

    public long getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public void setUsername(long username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}