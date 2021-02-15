/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.Affluence;
import com.samrtsolutions.drive.model.Date_Affluence;

/**
 *
 * @author Helmy
 */
public interface AffluenceDao extends BaseDao<Affluence> {
    public String incrementerQteCommande (int codeMag, int codeCreneau, String date);
}
