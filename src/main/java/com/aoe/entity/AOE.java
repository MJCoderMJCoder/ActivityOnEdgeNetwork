/**
 * 
 */
package com.aoe.entity;

/**
 * @author MJCoder
 *
 */
public class AOE {
	private float duration;
	private Subproject origin; // 起始点
	private Subproject destination; // 终点
	// 以下字段是为了计算边活动的最早开始时间e(i)和最晚开始时间l(i)
	private String subproject2subproject; // 为了在criticalPath.jsp显示
	private float earliest; // 最早开始时间e(i)
	private float latest; // 最晚开始时间l(i)

	/**
	 * 
	 */
	public AOE() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param duration
	 * @param origin
	 * @param destination
	 * @param subproject2subproject
	 * @param earliest
	 * @param latest
	 */
	public AOE(float duration, Subproject origin, Subproject destination, String subproject2subproject, float earliest,
			float latest) {
		this.duration = duration;
		this.origin = origin;
		this.destination = destination;
		this.subproject2subproject = subproject2subproject;
		this.earliest = earliest;
		this.latest = latest;
	}

	/**
	 * @return the duration
	 */
	public float getDuration() {
		return duration;
	}

	/**
	 * @param duration
	 *            the duration to set
	 */
	public void setDuration(float duration) {
		this.duration = duration;
	}

	/**
	 * @return the origin
	 */
	public Subproject getOrigin() {
		return origin;
	}

	/**
	 * @param origin
	 *            the origin to set
	 */
	public void setOrigin(Subproject origin) {
		this.origin = origin;
	}

	/**
	 * @return the destination
	 */
	public Subproject getDestination() {
		return destination;
	}

	/**
	 * @param destination
	 *            the destination to set
	 */
	public void setDestination(Subproject destination) {
		this.destination = destination;
	}

	/**
	 * @return the subproject2subproject
	 */
	public String getSubproject2subproject() {
		return subproject2subproject;
	}

	/**
	 * @param subproject2subproject
	 *            the subproject2subproject to set
	 */
	public void setSubproject2subproject(String subproject2subproject) {
		this.subproject2subproject = subproject2subproject;
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

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "AOE [duration=" + duration + ", origin=" + origin + ", destination=" + destination
				+ ", subproject2subproject=" + subproject2subproject + ", earliest=" + earliest + ", latest=" + latest
				+ "]";
	}

}
