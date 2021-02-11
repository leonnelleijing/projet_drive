/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.Affluence;
import java.util.Date;

/**
 *
 * @author 33667
 */
public interface AffluenceDao extends BaseDao<Affluence> {
    public String incrementerQteCommande (int CodeMag, int CodeCreneau, String date);
}
