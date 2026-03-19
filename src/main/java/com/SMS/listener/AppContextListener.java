package com.SMS.listener;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Enumeration;

@WebListener
public class AppContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("SMS App started successfully...");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

        System.out.println("Cleaning up JDBC Drivers...");

        Enumeration<Driver> drivers = DriverManager.getDrivers();
        while (drivers.hasMoreElements()) {
            Driver driver = drivers.nextElement();
            try {
                DriverManager.deregisterDriver(driver);
                System.out.println("Deregistered: " + driver);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        System.out.println("Cleanup completed.");
    }
}