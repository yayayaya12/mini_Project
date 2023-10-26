package org.itsci.project.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.itsci.project.model.Project;
import org.itsci.project.model.Video;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class VideoDaoImpl implements VideoDao{

    @Autowired
    SessionFactory sessionFactory;
    @Override
    public List<Video> getVideos() {
        Session session = sessionFactory.getCurrentSession();
        Query<Video> query = session.createQuery("from Video ", Video.class);
        List<Video> videos = query.getResultList();
        return videos;
    }

    @Override
    public void saveVideo(Video video) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(video);
    }

    @Override
    public Video getVideo(String id) {

        Session session = sessionFactory.getCurrentSession();
        Video video = session.get(Video.class, id);

        return video;
    }

    @Override
    public void deleteVideo(String id) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("delete from Video where video_id=:id");
        query.setParameter("id", id);
        query.executeUpdate();
    }

    @Override
    public Video getVideoByCode(String code) {
        Session session = sessionFactory.getCurrentSession();
        Query<Video> query = session.createQuery("from Video where project.student.student_id =:code", Video.class);
        query.setParameter("code", code);
        Video video = query.getSingleResult();
        return video;
    }

    public String getMaxId(){
        Session session = sessionFactory.getCurrentSession();
        Query<Long> query = session.createQuery("select count(video_id) from Video ");
        List<Long> list = query.getResultList();
        long i = list.get(0)+1;
        String str = String.valueOf(i);
        System.out.println(i);
        return str;
    }
}
