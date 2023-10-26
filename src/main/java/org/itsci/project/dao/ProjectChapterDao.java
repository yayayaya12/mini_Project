package org.itsci.project.dao;

import org.itsci.project.model.Project;
import org.itsci.project.model.Projectchapter;
import org.itsci.project.service.ProjectChapterService;

import java.util.List;

public interface ProjectChapterDao {
    List<Projectchapter> getProjectChapters();

    void saveProjectChapter(Projectchapter projectchapter);

    Projectchapter getProjectChapter(String id);

    void deleteProjectChapter(String id);

    Projectchapter getProjectChapterByCode(String code);

    String getMaxId();
    Projectchapter getProjectChapterByIdAndFileType(String id,String type);

    Projectchapter getProjectChapterByFileType(String type);
}
