package model;

import java.sql.Timestamp;

public class Exercise_User {
	private long result_id;
	private long exercise_id;
	private long user_id;
	private String user_name;
	private String section_name;
	private String exercise_name;
	private String filesubmit;
	private Timestamp timesubmit;
	private double score;
	private String review;
	private long course_id;
	public Exercise_User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Exercise_User(long result_id,long exercise_id, long user_id, String user_name, String section_name, String exercise_name,
			String filesubmit, Timestamp timesubmit, double score, String review,long course_id) {
		super();
		this.result_id=result_id;
		this.exercise_id = exercise_id;
		this.user_id = user_id;
		this.user_name = user_name;
		this.section_name = section_name;
		this.exercise_name = exercise_name;
		this.filesubmit = filesubmit;
		this.timesubmit = timesubmit;
		this.score = score;
		this.review = review;
		this.course_id=course_id;
	}
	public long getExercise_id() {
		return exercise_id;
	}
	public void setExercise_id(long exercise_id) {
		this.exercise_id = exercise_id;
	}
	public long getUser_id() {
		return user_id;
	}
	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getSection_name() {
		return section_name;
	}
	public void setSection_name(String section_name) {
		this.section_name = section_name;
	}
	public String getExercise_name() {
		return exercise_name;
	}
	public void setExercise_name(String exercise_name) {
		this.exercise_name = exercise_name;
	}
	public String getFilesubmit() {
		return filesubmit;
	}
	public void setFilesubmit(String filesubmit) {
		this.filesubmit = filesubmit;
	}
	public Timestamp getTimesubmit() {
		return timesubmit;
	}
	public void setTimesubmit(Timestamp timesubmit) {
		this.timesubmit = timesubmit;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public long getCourse_id() {
		return course_id;
	}
	public void setCourse_id(long course_id) {
		this.course_id = course_id;
	}
	public long getResult_id() {
		return result_id;
	}
	public void setResult_id(long result_id) {
		this.result_id = result_id;
	}
	
}
