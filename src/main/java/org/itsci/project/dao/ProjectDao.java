package org.itsci.project.dao;

import org.itsci.project.model.Personnel;
import org.itsci.project.model.Project;

import java.util.List;

public interface ProjectDao {
    List<Project> getProjects();

    void saveProject(Project project);

    Project getProject(String id);

    void deleteProject(String id);

    Project getProjectByCode(String code);
    List<Project> getProjectByAdvisor(String id);

    List<Project> getProjectByApprove(String id);

    List<Project> getProjectByNotApprove(String id);

}
