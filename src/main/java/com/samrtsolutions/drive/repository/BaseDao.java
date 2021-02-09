/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

/**
 *
 * @author cheny
 */
public interface BaseDao<T> {
    public void edit(Object obj);
    public void delete(int id);
    public T load(int id);
    public T get(int id);
}
