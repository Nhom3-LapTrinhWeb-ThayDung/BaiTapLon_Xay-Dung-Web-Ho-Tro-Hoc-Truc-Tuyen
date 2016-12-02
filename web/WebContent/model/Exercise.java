package model;

public class Exercise {
	private long exercise_id;
	private String exercise_name;
	private String exercise_startdate;
	private String exercise_starttime;
	private String exercise_enddate;
	private String exercise_endtime;
	private long section_id;
	private String exersice_content;
	public Exercise() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Exercise(long exercise_id, String exercise_name, String exercise_startdate, String exercise_starttime,
			String exercise_enddate, String exercise_endtime, long section_id,String exersice_content) {
		super();
		this.exercise_id = exercise_id;
		this.exercise_name = exercise_name;
		this.exercise_startdate = exercise_startdate;
		this.exercise_starttime = exercise_starttime;
		this.exercise_enddate = exercise_enddate;
		this.exercise_endtime = exercise_endtime;
		this.section_id = section_id;
		this.exersice_content = exersice_content;
	}
	public long getExercise_id() {
		return exercise_id;
	}
	public void setExercise_id(long exercise_id) {
		this.exercise_id = exercise_id;
	}
	public String getExercise_name() {
		return exercise_name;
	}
	public void setExercise_name(String exercise_name) {
		this.exercise_name = exercise_name;
	}
	public String getExercise_startdate() {
		return exercise_startdate;
	}
	public void setExercise_startdate(String exercise_startdate) {
		this.exercise_startdate = exercise_startdate;
	}
	public String getExercise_starttime() {
		return exercise_starttime;
	}
	public void setExercise_starttime(String exercise_starttime) {
		this.exercise_starttime = exercise_starttime;
	}
	public String getExercise_enddate() {
		return exercise_enddate;
	}
	public void setExercise_enddate(String exercise_enddate) {
		this.exercise_enddate = exercise_enddate;
	}
	public String getExercise_endtime() {
		return exercise_endtime;
	}
	public void setExercise_endtime(String exercise_endtime) {
		this.exercise_endtime = exercise_endtime;
	}
	public long getSection_id() {
		return section_id;
	}
	public void setSection_id(long section_id) {
		this.section_id = section_id;
	}
	public String getExersice_content() {
		return exersice_content;
	}
	public void setExersice_content(String exersice_content) {
		this.exersice_content = exersice_content;
	}
	
	

}
