package AEPL_TEST1.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;

import AEPL_TEST1.dto.userDto;

@Component
public class userDao {
	EntityManagerFactory entitymanagerfactory = Persistence.createEntityManagerFactory("tab_pro");
	EntityManager entitymanager = entitymanagerfactory.createEntityManager();
	EntityTransaction entitytransaction = entitymanager.getTransaction();

	public void insert(userDto userDto) {

		entitytransaction.begin();
		entitymanager.persist(userDto);
		entitytransaction.commit();
	}
	
}