package org.itsci.project.service;

import org.itsci.project.dao.ProjectChapterDao;
import org.itsci.project.dao.VideoDao;
import org.itsci.project.model.Projectchapter;
import org.itsci.project.model.Video;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class VideoServiceImpl implements VideoService{
    @Autowired
    private VideoDao videoDao;
    @Override
    @Transactional
    public List<Video> getVideo() {
        return videoDao.getVideos();
    }

    @Override
    @Transactional
    public void saveVideo(Video video) {
        videoDao.saveVideo(video);
    }

    @Override
    @Transactional
    public Video getVideo(String id) {
        return videoDao.getVideo(id);
    }

    @Override
    @Transactional
    public void deleteVideo(String id) {
        videoDao.deleteVideo(id);
    }

    @Override
    @Transactional
    public Video getVideoByCode(String code) {
        return videoDao.getVideoByCode(code);
    }

    @Override
    @Transactional
    public void updateVideo(Video dbVideo, Video video) {
        Video categoryEntity = videoDao.getVideo(video.getVideo_id());
        categoryEntity.fill(video);
        saveVideo(categoryEntity);
    }

    @Override
    @Transactional
    public String getMaxId() {
        return videoDao.getMaxId();
    }
}
