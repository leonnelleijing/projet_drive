/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;



/**
 *
 * @author cheny
 */
public class GeneriscUtil {
    @SuppressWarnings("rawtypes")
    
    public static Class getGenericType(Class clazz) {
        Type genType = (Type) clazz.getGenericSuperclass(); // 获取泛型父类
        Type[] types = ((ParameterizedType) genType).getActualTypeArguments();
        if (!(types[0] instanceof Class)) {
            return Object.class;
        } 
        return (Class) types[0];
    }
}
