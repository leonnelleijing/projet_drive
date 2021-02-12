/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.NiveauAfflux;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Helmy
 */
public interface NiveauAffluxDao extends BaseDao<NiveauAfflux> {
    public List<NiveauAfflux> afficherAfflux(int codeMag);
    public ArrayList<NiveauAfflux> afficherCreneau(int idMag);
}
