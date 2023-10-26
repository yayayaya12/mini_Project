package org.itsci.project.service;

import org.itsci.project.model.Project;
//import org.itsci.project.model.Video;

import java.util.List;

public interface ProjectService {
    List<Project> getProject();

    void saveProject(Project project);

    Project getProject(String id);

    void deleteProject(String id);

    Project getProjectByCode(String code);

    List<Project> getProjectByAdvisor(String id);
    List<Project> getProjectByApprove(String id);
    List<Project> getProjectByNotApprove(String id);
    void updateProject(Project dbProject, Project project);
}
