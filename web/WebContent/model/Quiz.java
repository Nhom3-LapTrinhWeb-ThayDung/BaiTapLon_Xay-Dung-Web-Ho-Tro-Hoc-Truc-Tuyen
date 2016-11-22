package model;

import java.sql.Date;
import java.sql.Time;

public class Quiz {
	private int id;
	private String quiz_name;
	private String start_date;
	private String end_date;
	private String time;
	private int count;
	private String description;
	public Quiz() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Quiz(int id, String quiz_name, String start_date, String end_date, String time, int count, String description) {
		super();
		this.id = id;
		this.quiz_name = quiz_name;
		this.start_date = start_date;
		this.end_date = end_date;
		this.time = time;
		this.count = count;
		this.description = description;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQuiz_name() {
		return quiz_name;
	}
	public void setQuiz_name(String quiz_name) {
		this.quiz_name = quiz_name;
	}
	
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}

	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
