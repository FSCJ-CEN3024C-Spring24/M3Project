package edu.fscj.cen3024c.m3pizzarestaurant.entity;

import jakarta.persistence.*;

import java.util.Objects;
import java.util.Set;

@Entity
public class Customer {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @jakarta.persistence.Column(name = "customerid", nullable = false)
    private int customerid;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "customer")
    private Set<PizzaOrder> pizzaOrder;

    @Column(name = "lastname", length = 255)
    private String lastName;

    @Column(name = "firstname", length = 255)
    private String firstName;

    public int getCustomerid() {
        return customerid;
    }

    public void setCustomerid(int customerid) {
        this.customerid = customerid;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastname(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstname(String firstName) {
        this.firstName = firstName;
    }

    @Override
    public boolean equals(Object o) {
        boolean result = false;
        if (this == o)
            result = true;
        else if (o != null && getClass() == o.getClass()) {
            Customer customer = (Customer) o;
            result = customerid == customer.customerid &&
                    Objects.equals(lastName, customer.lastName) &&
                    Objects.equals(firstName, customer.firstName);
        }
        return result;
    }

    @Override
    public int hashCode() {
        return Objects.hash(customerid, lastName, firstName);
    }

    @Override
    public String toString() {
        return "Customer {" +
                "customerid=" + customerid +
                ", pizzaOrder=" + pizzaOrder +
                ", lastName='" + lastName + '\'' +
                ", firstName='" + firstName + '\'' +
                " }";
    }
}
