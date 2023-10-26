package org.itsci.project.dao;

import org.itsci.project.model.Personnel;
import org.itsci.project.model.Video;

import java.util.List;

public interface PersonnelDao {
    List<Personnel> getPersonnels();

    void savePersonnel(Personnel personnel);

    Personnel getPersonnel(String id);

    void deletePersonnel(String id);

    Personnel getPersonnelByCode(String code);
    Personnel getPersonnelByEmail(String email);
}
