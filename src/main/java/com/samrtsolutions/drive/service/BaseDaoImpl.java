/*
 * Copyright 2021 leonl.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.samrtsolutions.drive.service;

import javax.annotation.Resource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author leonl
 */
public class BaseDaoImpl<T> implements BaseDao<T> {
    @Resource
    private SessionFactory factory;
    private Class<T> clazz = GeneriscUtil.getGenericType(this.getClass());
    
    protected Session getSession() {
        return factory.getCurrentSession();
    }
    
    public void edit(Object obj) {
        getSession().saveOrUpdate(obj);
    }

    public void delete(int id) {
        Object object = getSession().get(clazz, id);
        if(object != null) {
            getSession().delete(object);
        }
    }

    public T load(int id) {
        return (T) getSession().load(clazz, id);
    }

    public T get(int id) {
        return (T) getSession().get(clazz, id);
    }

}
