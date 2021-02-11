/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.Liste;



/**
 *
 * @author maxim
 */
public interface ListDao extends BaseDao<Liste>{
    public String addList(String name);
    
    public String addWord(String name, Liste list);
}
