package org.itsci.project.service;

import org.itsci.project.dao.ProjectDao;
import org.itsci.project.dao.StudentDao;
import org.itsci.project.model.Project;
import org.itsci.project.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ProjectServiceImpl implements ProjectService{

    @Autowired
    private ProjectDao projectDao;


    @Override
    @Transactional
    public void saveProject(Project project) {
        projectDao.saveProject(project);
    }

    @Override
    @Transactional
    public Project getProject(String id) {
        return projectDao.getProject(id);
    }

    @Override
    @Transactional
    public void deleteProject(String id) {
        projectDao.deleteProject(id);
    }

    @Override
    @Transactional
    public Project getProjectByCode(String code) {
        return projectDao.getProjectByCode(code);
    }

    @Override
    @Transactional
    public List<Project> getProjectByAdvisor(String id) {
        return projectDao.getProjectByAdvisor(id);
    }

    @Override
    @Transactional
    public List<Project> getProjectByApprove(String id) {
        return projectDao.getProjectByApprove(id);
    }
    @Override
    @Transactional
    public List<Project> getProjectByNotApprove(String id) {
        return projectDao.getProjectByNotApprove(id);
    }
    @Override
    @Transactional
    public void updateProject(Project dbProject, Project project) {
        Project categoryEntity = projectDao.getProject(project.getProject_id());
        categoryEntity.fill(project);
        saveProject(categoryEntity);
    }

    @Override
    @Transactional
    public List<Project> getProject() {
        return projectDao.getProjects();
    }
}
