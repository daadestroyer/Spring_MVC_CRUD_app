package crudapp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import crudapp.model.Product;

@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void addProduct(Product product) {
		 this.hibernateTemplate.saveOrUpdate(product);
		 
	}

	// get all product
	public List<Product> getProducts() {
		// Product.class ka object return karega
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}

	// in this we're getting single product
	public Product getProduct(int pid) {
		return this.hibernateTemplate.get(Product.class, pid);
	}

	// delete single product
	@Transactional
	public void deleteProduct(int pid) {
		Product p = this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(p);
	}

}
