package ftl.model;

import org.hibernate.annotations.Cascade;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private long id;
    @Column(name = "login")
    private String login;
    @Column(name = "password", length = 50)
    private String password;
    @Column(name = "age")
    private int age;
    @Column(name = "name", length = 50)
    private String name;
    @Column(name = "description", length = 250)
    private String description;

    @OneToOne
    @JoinColumn(name = "adress_id")
    @Cascade(value = org.hibernate.annotations.CascadeType.ALL)
    private Adress adress;


    public User(){}
    public User(String login, String password){
        this.login = login;
        this.password = password;
    }

    public User(String login, String password, int age, String name, String description) {
        this.login = login;
        this.password = password;
        this.age = age;
        this.name = name;
        this.description = description;
    }

    public User(String login, String password, int age, String name, String description, Adress adress) {
        this.login = login;
        this.password = password;
        this.age = age;
        this.name = name;
        this.description = description;
        this.adress = adress;
    }
    public User(long id, String login, String password, int age, String name, String description, Adress adress) {
        this.id = id;
        this.login = login;
        this.password = password;
        this.age = age;
        this.name = name;
        this.description = description;
        this.adress = adress;

    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Adress getAdress() {
        return adress;
    }

    public void setAdress(Adress adress) {
        this.adress = adress;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return id == user.id &&
                age == user.age &&
                Objects.equals(login, user.login) &&
                Objects.equals(password, user.password) &&
                Objects.equals(name, user.name) &&
                Objects.equals(description, user.description) &&
                Objects.equals(adress, user.adress);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, login, password, age, name, description, adress);
    }

//   ", adress=" + adress.getTown() + "," + adress.getStreet() + "," + adress.getHouse() +
//           '}';

    @Override
    public String toString() {
        return  "id=" + id +
                ", login='" + login + '\'' +
                ", password='" + password + '\'' +
                ", age=" + age +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", adress=" + adress.getTown() + "," + adress.getStreet() + "," + adress.getHouse();
    }
}