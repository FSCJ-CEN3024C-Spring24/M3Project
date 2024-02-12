package edu.fscj.cen3024c.m3pizzarestaurant.repository;

import edu.fscj.cen3024c.m3pizzarestaurant.entity.PizzaOrder;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PizzaOrderRepository extends JpaRepository<PizzaOrder, Integer> {
}