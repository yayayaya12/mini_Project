package org.itsci.project.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.itsci.project.model.Project;
import org.itsci.project.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class ProjectDaoImpl implements ProjectDao{

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public List<Project> getProjects() {
        Session session = sessionFactory.getCurrentSession();
        Query<Project> query = session.createQuery("from Project", Project.class);
        List<Project> projects = query.getResultList();
        return projects;
    }

    @Override
    public void saveProject(Project project) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(project);
    }

    @Override
    public Project getProject(String id) {
        Session session = sessionFactory.getCurrentSession();
        Project project = session.get(Project.class, id);
        return project;
    }

    @Override
    public void deleteProject(String id) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("delete from Project where project_id=:id");
        query.setParameter("id", id);
        query.executeUpdate();
    }

    @Override
    public Project getProjectByCode(String code) {
        Session session = sessionFactory.getCurrentSession();
        Query<Project> query = session.createQuery("from Project where student.student_id =:code", Project.class);
        query.setParameter("code", code);
        Project project = query.getSingleResult();
        return project;
    }

    @Override
    public List<Project> getProjectByAdvisor(String code) {
        Session session = sessionFactory.getCurrentSession();
        Query<Project> query = session.createQuery("from Project where personnel.personnelid =:code", Project.class);
        query.setParameter("code", code);
        List<Project> projects = query.getResultList();
        return projects;
    }
    public List<Project> getProjectByApprove(String code) {
        Session session = sessionFactory.getCurrentSession();
        Query<Project> query = session.createQuery("from Project where personnel.personnelid =:code and approvestatus = 'YES'", Project.class);
        query.setParameter("code", code);
        List<Project> projects = query.getResultList();
        return projects;
    }
    public List<Project> getProjectByNotApprove(String code) {
        Session session = sessionFactory.getCurrentSession();
        Query<Project> query = session.createQuery("from Project where personnel.personnelid =:code and approvestatus = 'NO'", Project.class);
        query.setParameter("code", code);
        List<Project> projects = query.getResultList();
        return projects;
    }
}
