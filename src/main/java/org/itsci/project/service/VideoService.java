package org.itsci.project.service;

//import org.itsci.project.model.Student;
import org.itsci.project.model.Video;

import java.util.List;

public interface VideoService {
    List<Video> getVideo();

    void saveVideo(Video video);

    Video getVideo(String id);

    void deleteVideo(String id);

    Video getVideoByCode(String code);

    void updateVideo(Video dbVideo, Video video);

    String getMaxId();
}
