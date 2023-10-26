package org.itsci.project.dao;

import org.itsci.project.model.Student;
import org.itsci.project.model.Video;

import java.util.List;

public interface VideoDao {
    List<Video> getVideos();

    void saveVideo(Video video);

    Video getVideo(String id);

    void deleteVideo(String id);

    String getMaxId();

    Video getVideoByCode(String code);
}
