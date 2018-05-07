/**
 * 
 */
package com.aoe.entity;

import java.util.List;

/**
 * @author MJCoder
 *
 */
public class Subproject {
	private String subprojectName;
	private float earliest; // 最早发生时间
	private float latest; // 最晚发生时间
	private List<AOE> originAoes; // 从起始点发出的AOE（ subprojects的originAoes为0代表起始点。）
	private List<AOE> destinationAoes; // 指向最终节点的AOE（ subprojects的destinationAoes为0代表终结点。）

	/**
	 * 
	 */
	public Subproject() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param subprojectName
	 * @param earliest
	 * @param latest
	 * @param originAoes
	 * @param destinationAoes
	 */
	public Subproject(String subprojectName, float earliest, float latest, List<AOE> originAoes,
			List<AOE> destinationAoes) {
		this.subprojectName = subprojectName;
		this.earliest = earliest;
		this.latest = latest;
		this.originAoes = originAoes;
		this.destinationAoes = destinationAoes;
	}

	/**
	 * @return the subprojectName
	 */
	public String getSubprojectName() {
		return subprojectName;
	}

	/**
	 * @param subprojectName
	 *            the subprojectName to set
	 */
	public void setSubprojectName(String subprojectName) {
		this.subprojectName = subprojectName;
	}

	/**
	 * @return the earliest
	 */
	public float getEarliest() {
		return earliest;
	}

	/**
	 * @param earliest
	 *            the earliest to set
	 */
	public void setEarliest(float earliest) {
		this.earliest = earliest;
	}

	/**
	 * @return the latest
	 */
	public float getLatest() {
		return latest;
	}

	/**
	 * @param latest
	 *            the latest to set
	 */
	public void setLatest(float latest) {
		this.latest = latest;
	}

	/**
	 * @return the originAoes
	 */
	public List<AOE> getOriginAoes() {
		return originAoes;
	}

	/**
	 * @param originAoes
	 *            the originAoes to set
	 */
	public void setOriginAoes(List<AOE> originAoes) {
		this.originAoes = originAoes;
	}

	/**
	 * @return the destinationAoes
	 */
	public List<AOE> getDestinationAoes() {
		return destinationAoes;
	}

	/**
	 * @param destinationAoes
	 *            the destinationAoes to set
	 */
	public void setDestinationAoes(List<AOE> destinationAoes) {
		this.destinationAoes = destinationAoes;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Subproject [subprojectName=" + subprojectName + ", earliest=" + earliest + ", latest=" + latest
				+ ", originAoes=" + originAoes + ", destinationAoes=" + destinationAoes + "]";
	}

}
