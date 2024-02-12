package edu.fscj.cen3024c.m3pizzarestaurant;

import edu.fscj.cen3024c.m3pizzarestaurant.repository.CustomerRepository;
import edu.fscj.cen3024c.m3pizzarestaurant.repository.PizzaRepository;
import edu.fscj.cen3024c.m3pizzarestaurant.repository.PizzaOrderRepository;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class M3PizzaRestaurantApplication {

    public static void main(String[] args) {
        SpringApplication.run(M3PizzaRestaurantApplication.class, args);
    }

    @Bean
    public CommandLineRunner testDatabaseRepositories(CustomerRepository customerRepo,
                                                      PizzaRepository pizzaRepo,
                                                      PizzaOrderRepository pizzaOrderRepo) {
        return args -> {
            // Fetch all customers and print them
            customerRepo.findAll().forEach(customer -> System.out.println(customer.toString()));

            // Fetch all pizzas and print them
            pizzaRepo.findAll().forEach(pizza -> System.out.println(pizza.toString()));

            // Fetch all pizza orders and print them
            pizzaOrderRepo.findAll().forEach(order -> System.out.println(order.toString()));
        };
    }
}
