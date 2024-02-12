package edu.fscj.cen3024c.m3pizzarestaurant.repository;

import edu.fscj.cen3024c.m3pizzarestaurant.entity.Pizza;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PizzaRepository extends JpaRepository<Pizza, Integer> {
}