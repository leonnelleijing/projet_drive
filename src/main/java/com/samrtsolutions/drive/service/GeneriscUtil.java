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

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;




/**
 *
 * @author leonl
 */
public class GeneriscUtil {
       @SuppressWarnings("rawtypes")
    public static Class getGenericType(Class clazz){
        Type genType = clazz.getGenericSuperclass();
        Type[] types = ((ParameterizedType) genType).getActualTypeArguments();
        if (!(types[0] instanceof Class)) {
            return Object.class;   
        } 
        return (Class) types[0];
    
        }
}
