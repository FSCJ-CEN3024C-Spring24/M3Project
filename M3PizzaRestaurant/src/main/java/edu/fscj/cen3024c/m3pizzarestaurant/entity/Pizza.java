package edu.fscj.cen3024c.m3pizzarestaurant.entity;

import jakarta.persistence.*;

import java.util.Objects;
import java.util.Set;

@Entity
public class Pizza {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @jakarta.persistence.Column(name = "pizzaid", nullable = false)
    private int pizzaid;

    public int getPizzaid() {
        return pizzaid;
    }

    public void setPizzaid(int pizzaid) {
        this.pizzaid = pizzaid;
    }

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "pizza")
    private Set<PizzaOrder> pizzaOrder;

    @Column(name = "pizzatype", length = 255)
    private String pizzaType;

    @Column(name = "pizzasize", length = 10)
    private int pizzaSize;

    public String getPizzaType() {
        return pizzaType;
    }

    public void setPizzaType(String pizzaType) {
        this.pizzaType = pizzaType;
    }

    public int getPizzaSize() {
        return pizzaSize;
    }

    public void setPizzasize(int pizzasize) {
        this.pizzaSize = pizzaSize;
    }

    @Override
    public boolean equals(Object o) {
        boolean result = false;
        if (this == o)
            result = true;
        else if (o != null && getClass() != o.getClass()) {
            Pizza pizza = (Pizza) o;
            result = pizzaid == pizza.pizzaid && pizzaSize == pizza.pizzaSize &&
                Objects.equals(pizzaType, pizza.pizzaType);
        }
        return result;
    }

    @Override
    public int hashCode() {
        return Objects.hash(pizzaid, pizzaType, pizzaSize);
    }

    @Override
    public String toString() {
        return "Pizza {" +
                "pizzaid=" + pizzaid +
                ", pizzaOrder=" + pizzaOrder +
                ", pizzatype='" + pizzaType + '\'' +
                ", pizzasize=" + pizzaSize +
                " }";
    }
}
