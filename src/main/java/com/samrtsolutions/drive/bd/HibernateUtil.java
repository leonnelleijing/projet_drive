package com.samrtsolutions.drive.bd;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

/**
 * Chargement de la configuration et création de la SessionFactory.
 * (hibernate.cfg.xml)
 */
public class HibernateUtil {

    private static final SessionFactory SESSION_FACTORY;

    static {
        try {
            Configuration configuration = new Configuration();
            configuration.configure("hibernate.cfg.xml");
            System.out.println("-------------------------Hibernate Configuration loaded");

            /**
             * Ajout des classes.
            /**
             * Entité.
             */
          
            // configuration.addAnnotatedClass(com.samrtsolutions.drive.model.Magasin.class);
            // configuration.addAnnotatedClass(com.samrtsolutions.drive.model.Creneau.class);
            configuration.addAnnotatedClass(com.samrtsolutions.drive.model.Affluence.class);
            configuration.addAnnotatedClass(com.samrtsolutions.drive.model.Date_Affluence.class);

            ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
            System.out.println("Hibernate serviceRegistry created");

            SESSION_FACTORY = configuration.buildSessionFactory(serviceRegistry);
        } catch (HibernateException ex) {
            /*----- Exception -----*/
            System.err.println("Initial SessionFactory creation failed.\n" + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return SESSION_FACTORY;
    }

}
/*----- Fin de la classe HibernateUtil -----*/
