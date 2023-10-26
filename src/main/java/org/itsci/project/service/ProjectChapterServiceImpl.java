package org.itsci.project.service;

import org.itsci.project.dao.ProjectChapterDao;
import org.itsci.project.dao.ProjectDao;
import org.itsci.project.model.Project;
import org.itsci.project.model.Projectchapter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ProjectChapterServiceImpl implements ProjectChapterService{
    @Autowired
    private ProjectChapterDao projectChapterDao;


    @Override
    @Transactional
    public void saveProjectChapter(Projectchapter project) {
        projectChapterDao.saveProjectChapter(project);
    }

    @Override
    @Transactional
    public Projectchapter getProjectChapter(String id) {
        return projectChapterDao.getProjectChapter(id);
    }

    @Override
    @Transactional
    public void deleteProjectChapter(String id) {
        projectChapterDao.deleteProjectChapter(id);
    }

    @Override
    @Transactional
    public Projectchapter getProjectChapterByCode(String code) {
        return projectChapterDao.getProjectChapterByCode(code);
    }

    @Override
    @Transactional
    public void updateProjectChapter(Projectchapter dbProject, Projectchapter projectchapter) {
        Projectchapter categoryEntity = projectChapterDao.getProjectChapter(projectchapter.getFile_id());
        categoryEntity.fill(projectchapter);
        saveProjectChapter(categoryEntity);
    }

    @Override
    @Transactional
    public List<Projectchapter> getProjectChapter() {
        return projectChapterDao.getProjectChapters();
    }

    @Override
    @Transactional
    public String getMaxId(){
        return projectChapterDao.getMaxId();
    }

    @Override
    @Transactional
    public Projectchapter getProjectChapterByIdAndFileType(String id,String type){
        return projectChapterDao.getProjectChapterByIdAndFileType(id,type);
    }

    @Override
    @Transactional
    public Projectchapter getProjectChapterByFileType(String type) {
        return projectChapterDao.getProjectChapterByFileType(type);
    }
}
