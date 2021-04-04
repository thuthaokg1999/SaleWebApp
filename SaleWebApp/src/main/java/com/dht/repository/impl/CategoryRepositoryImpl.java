/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dht.repository.impl;

import com.dht.pojo.Category;
import com.dht.repository.CategoryRepository;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Admin
 */
@Repository
public class CategoryRepositoryImpl implements  CategoryRepository {
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    @Transactional
    public List<Category> getCategories() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Category");
        return q.getResultList();
//        Category c1 = new Category();
//        c1.setId(1);
//        c1.setName("Mobile");
//        Category c2 = new Category();
//        c2.setId(2);
//        c2.setName("Tablet");
//        
//        List<Category> cates = new ArrayList<>();
//        cates.add(c1);
//        cates.add(c2);
//        
//        return cates;
    }

    @Override
    @Transactional
    public Category getCateById(int id) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        return s.get(Category.class, id);
    }
    
    
    
}
