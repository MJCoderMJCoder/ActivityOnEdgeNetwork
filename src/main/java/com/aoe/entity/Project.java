/**
 * 
 */
package com.aoe.entity;

import java.util.List;

/**
 * @author MJCoder
 *
 */
public class Project {
	private String projectName;
	private int priority;
	private List<Subproject> subprojects;
	private List<AOE> aoesEarliest; // 子项目的最早开始时间e(i)【边活动】
	private List<AOE> aoesLatest; // 子项目的最晚开始时间l(i)【边活动】
	private Subproject originSubproject; // 起始节点
	private float earliestFinishTime; // 这个项目的最早完成时间

	/**
	 * 
	 */
	public Project() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param projectName
	 * @param priority
	 * @param subprojects
	 * @param aoesEarliest
	 * @param aoesLatest
	 * @param originSubproject
	 * @param earliestFinishTime
	 */
	public Project(String projectName, int priority, List<Subproject> subprojects, List<AOE> aoesEarliest,
			List<AOE> aoesLatest, Subproject originSubproject, float earliestFinishTime) {
		this.projectName = projectName;
		this.priority = priority;
		this.subprojects = subprojects;
		this.aoesEarliest = aoesEarliest;
		this.aoesLatest = aoesLatest;
		this.originSubproject = originSubproject;
		this.earliestFinishTime = earliestFinishTime;
	}

	/**
	 * @return the projectName
	 */
	public String getProjectName() {
		return projectName;
	}

	/**
	 * @param projectName
	 *            the projectName to set
	 */
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	/**
	 * @return the priority
	 */
	public int getPriority() {
		return priority;
	}

	/**
	 * @param priority
	 *            the priority to set
	 */
	public void setPriority(int priority) {
		this.priority = priority;
	}

	/**
	 * @return the subprojects
	 */
	public List<Subproject> getSubprojects() {
		return subprojects;
	}

	/**
	 * @param subprojects
	 *            the subprojects to set
	 */
	public void setSubprojects(List<Subproject> subprojects) {
		this.subprojects = subprojects;
	}

	/**
	 * @return the aoesEarliest
	 */
	public List<AOE> getAoesEarliest() {
		return aoesEarliest;
	}

	/**
	 * @param aoesEarliest
	 *            the aoesEarliest to set
	 */
	public void setAoesEarliest(List<AOE> aoesEarliest) {
		this.aoesEarliest = aoesEarliest;
	}

	/**
	 * @return the aoesLatest
	 */
	public List<AOE> getAoesLatest() {
		return aoesLatest;
	}

	/**
	 * @param aoesLatest
	 *            the aoesLatest to set
	 */
	public void setAoesLatest(List<AOE> aoesLatest) {
		this.aoesLatest = aoesLatest;
	}

	/**
	 * @return the originSubproject
	 */
	public Subproject getOriginSubproject() {
		return originSubproject;
	}

	/**
	 * @param originSubproject
	 *            the originSubproject to set
	 */
	public void setOriginSubproject(Subproject originSubproject) {
		this.originSubproject = originSubproject;
	}

	/**
	 * @return the earliestFinishTime
	 */
	public float getEarliestFinishTime() {
		return earliestFinishTime;
	}

	/**
	 * @param earliestFinishTime
	 *            the earliestFinishTime to set
	 */
	public void setEarliestFinishTime(float earliestFinishTime) {
		this.earliestFinishTime = earliestFinishTime;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Project [projectName=" + projectName + ", priority=" + priority + ", subprojects=" + subprojects
				+ ", aoesEarliest=" + aoesEarliest + ", aoesLatest=" + aoesLatest + ", originSubproject="
				+ originSubproject + ", earliestFinishTime=" + earliestFinishTime + "]";
	}
}
