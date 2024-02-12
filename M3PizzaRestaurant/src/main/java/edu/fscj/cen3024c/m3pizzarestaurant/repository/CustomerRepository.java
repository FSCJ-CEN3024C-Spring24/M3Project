package edu.fscj.cen3024c.m3pizzarestaurant.repository;

import edu.fscj.cen3024c.m3pizzarestaurant.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Integer> {
}