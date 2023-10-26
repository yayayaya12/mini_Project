package org.itsci.project.service;



import org.itsci.project.model.Personnel;

import java.util.List;

public interface PersonnelService {
    List<Personnel> getPersonnels();

    void savePersonnel(Personnel project);

    Personnel getPersonnel(String id);

    void deletePersonnel(String id);

    Personnel getPersonnelByCode(String code);

    Personnel getPersonnelByEmail(String email);

    void updatePersonnel(Personnel dbPersonnel, Personnel personnel);
}
