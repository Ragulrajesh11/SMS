package com.SMS.listener;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import com.mysql.cj.jdbc.AbandonedConnectionCleanupThread;

import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Enumeration;

public class AppContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // App startup
        System.out.println("SMS App started...");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("SMS App stopping... cleaning up resources.");

        // Deregister all JDBC drivers to prevent memory leaks
        Enumeration<Driver> drivers = DriverManager.getDrivers();
        while (drivers.hasMoreElements()) {
            Driver driver = drivers.nextElement();
            try {
                DriverManager.deregisterDriver(driver);
                System.out.println("Deregistered JDBC driver: " + driver);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        // Stop MySQL abandoned connection cleanup thread if present
        try {
            AbandonedConnectionCleanupThread.checkedShutdown();
            System.out.println("MySQL cleanup thread stopped.");
        } catch (NoClassDefFoundError e) {
            // Ignore if not using MySQL driver
        }

        System.out.println("Resource cleanup completed.");
    }
}
