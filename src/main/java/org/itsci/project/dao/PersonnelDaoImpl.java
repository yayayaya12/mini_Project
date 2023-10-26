package org.itsci.project.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.itsci.project.model.Personnel;
import org.itsci.project.model.Project;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PersonnelDaoImpl implements PersonnelDao{

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public List<Personnel> getPersonnels() {
        Session session = sessionFactory.getCurrentSession();
        Query<Personnel> query = session.createQuery("from Personnel", Personnel.class);
        List<Personnel> personnels = query.getResultList();
        return personnels;
    }

    @Override
    public void savePersonnel(Personnel personnel) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(personnel);
    }

    @Override
    public Personnel getPersonnel(String id) {
        Session session = sessionFactory.getCurrentSession();
        Personnel personnel = session.get(Personnel.class,id);
        return personnel;
    }

    @Override
    public void deletePersonnel(String id) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("delete from Personnel where personnelid =:id");
        query.setParameter("id", id);
        query.executeUpdate();
    }

    @Override
    public Personnel getPersonnelByCode(String code) {
        Session session = sessionFactory.getCurrentSession();
        Query<Personnel> query = session.createQuery("from Personnel where personnelid =:code", Personnel.class);
        query.setParameter("code", code);
        Personnel personnel = query.getSingleResult();
        return personnel;
    }

    @Override
    public Personnel getPersonnelByEmail(String email) {
        Session session = sessionFactory.getCurrentSession();
        Query<Personnel> query = session.createQuery("from Personnel where email =:email", Personnel.class);
        query.setParameter("email", email);
        Personnel personnel = query.getSingleResult();
        return personnel;
    }
}
