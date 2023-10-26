package org.itsci.project.service;

import org.itsci.project.dao.PersonnelDao;
import org.itsci.project.model.Personnel;
import org.itsci.project.model.Project;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PersonnelServiceImpl implements PersonnelService{
    @Autowired
    private PersonnelDao personnelDao;

    @Override
    @Transactional
    public List<Personnel> getPersonnels() {
        return personnelDao.getPersonnels();
    }

    @Override
    @Transactional
    public void savePersonnel(Personnel personnel) {
personnelDao.savePersonnel(personnel);
    }

    @Override
    @Transactional
    public Personnel getPersonnel(String id) {
        return personnelDao.getPersonnel(id);
    }

    @Override
    @Transactional
    public void deletePersonnel(String id) {
        personnelDao.deletePersonnel(id);
    }

    @Override
    @Transactional
    public Personnel getPersonnelByCode(String code) {
        return personnelDao.getPersonnelByCode(code);
    }

    @Override
    @Transactional
    public Personnel getPersonnelByEmail(String email) {
        return personnelDao.getPersonnelByEmail(email);
    }

    @Override
    public void updatePersonnel(Personnel dbPersonnel, Personnel personnel) {
        Personnel categoryEntity = personnelDao.getPersonnel(personnel.getPersonnelid());
        categoryEntity.fill(personnel);
        savePersonnel(categoryEntity);
    }
}
