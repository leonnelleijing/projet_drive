/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.Label;
import com.samrtsolutions.drive.model.Product;
import java.util.Set;

/**
 *
 * @author leonl
 */
public interface ProductDao  extends BaseDao<Product>  {
    public void addLabel(Product p, Label l);
//    public Set<Product> persisterProductsWithList(Set<Product> l);
}
