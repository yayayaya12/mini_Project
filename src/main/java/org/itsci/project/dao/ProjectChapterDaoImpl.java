package org.itsci.project.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.itsci.project.model.Project;
import org.itsci.project.model.Projectchapter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProjectChapterDaoImpl implements ProjectChapterDao{

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public List<Projectchapter> getProjectChapters() {
        Session session = sessionFactory.getCurrentSession();
        Query<Projectchapter> query = session.createQuery("from Projectchapter", Projectchapter.class);
        List<Projectchapter> projects = query.getResultList();
        return projects;
    }

    public String getMaxId(){
        int j = 1;
        Session session = sessionFactory.getCurrentSession();
        Query<Long> query = session.createQuery("select count(file_id) from Projectchapter");
        List<Long> list = query.getResultList();
        long i = list.get(0)+j;
        String str = String.valueOf(i);
        Projectchapter pj = getProjectChapter("F00"+str);
            if (pj != null){
                do {
                    j++;
                    i = list.get(0)+j;
                    str = String.valueOf(i);
                    pj = getProjectChapter("F00"+str);
                }while (pj != null);
            }
        System.out.println(i);
        return str;
    }

    @Override
    public void saveProjectChapter(Projectchapter project) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(project);
    }

    @Override
    public Projectchapter getProjectChapter(String id) {
        Session session = sessionFactory.getCurrentSession();
        Projectchapter project = session.get(Projectchapter.class, id);
        return project;
    }

    @Override
    public void deleteProjectChapter(String id) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("delete from Projectchapter where file_id=:id");
        query.setParameter("id", id);
        query.executeUpdate();
    }

    @Override
    public Projectchapter getProjectChapterByCode(String code) {
        Session session = sessionFactory.getCurrentSession();
        Query<Projectchapter> query = session.createQuery("from Projectchapter where project.project_id =:code", Projectchapter.class);
        query.setParameter("code", code);
        Projectchapter project = query.getSingleResult();
        return project;
    }

    @Override
    public Projectchapter getProjectChapterByIdAndFileType(String id,String type){
        Session session = sessionFactory.getCurrentSession();
        Query<Projectchapter> query = session.createQuery("from Projectchapter where project.project_id =: id and filetype =: type", Projectchapter.class);
        query.setParameter("id", id);
        query.setParameter("type", type);
        Projectchapter project = query.getSingleResult();
        return project;
    }

    @Override
    public Projectchapter getProjectChapterByFileType(String type){
        Session session = sessionFactory.getCurrentSession();
        Query<Projectchapter> query = session.createQuery("from Projectchapter where filetype =: type", Projectchapter.class);
        query.setParameter("type", type);
        Projectchapter project = query.getSingleResult();
        return project;
    }

}
