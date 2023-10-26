package org.itsci.project.service;

import org.itsci.project.model.Project;
import org.itsci.project.model.Projectchapter;

import java.util.List;

public interface ProjectChapterService {
    List<Projectchapter> getProjectChapter();

    void saveProjectChapter(Projectchapter projectchapter);

    Projectchapter getProjectChapter(String id);

    void deleteProjectChapter(String id);

    Projectchapter getProjectChapterByCode(String code);

    void updateProjectChapter(Projectchapter dbProjectChapter, Projectchapter projectchapter);

    String getMaxId();

    Projectchapter getProjectChapterByIdAndFileType(String id,String type);

    Projectchapter getProjectChapterByFileType (String type);
}
