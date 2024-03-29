package ftl.model;

import javax.persistence.*;

@Entity
@Table(name = "adress")
public class Adress {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private long id;
    @Column(name = "town")
    private String town;
    @Column(name = "street")
    private String street;
    @Column(name = "house")
    private String house;

    @OneToOne
    private User user;

    public Adress() {
    }

    public Adress(String town, String street, String house) {
        this.town = town;
        this.street = street;
        this.house = house;
    }

    public Adress(String town, String street, String house, User user) {
        this.town = town;
        this.street = street;
        this.house = house;
        this.user = user;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTown() {
        return town;
    }

    public void setTown(String town) {
        this.town = town;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getHouse() {
        return house;
    }

    public void setHouse(String house) {
        this.house = house;
    }

}


