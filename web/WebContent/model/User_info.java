package model;

import java.sql.Date;

public class User_info {

	private long id;
	private String ten;
	private String sodienthoai;
	private int gioitinh;
	private String ngaysinh;
	private String email;
	private String anhdaidien;
	private String diachi;
	private int quyen;
	public User_info() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User_info(long id, String ten, String sodienthoai, int gioitinh, String ngaysinh, String email,
			String anhdaidien, String diachi, int quyen) {
		super();
		this.id = id;
		this.ten = ten;
		this.sodienthoai = sodienthoai;
		this.gioitinh = gioitinh;
		this.ngaysinh = ngaysinh;
		this.email = email;
		this.anhdaidien = anhdaidien;
		this.diachi = diachi;
		this.quyen = quyen;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getSodienthoai() {
		return sodienthoai;
	}
	public void setSodienthoai(String sodienthoai) {
		this.sodienthoai = sodienthoai;
	}
	
	public int getGioitinh() {
		return gioitinh;
	}
	public void setGioitinh(int gioitinh) {
		this.gioitinh = gioitinh;
	}
	public String getNgaysinh() {
		return ngaysinh;
	}
	public void setNgaysinh(String ngaysinh) {
		this.ngaysinh = ngaysinh;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAnhdaidien() {
		return anhdaidien;
	}
	public void setAnhdaidien(String anhdaidien) {
		this.anhdaidien = anhdaidien;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public int getQuyen() {
		return quyen;
	}
	public void setQuyen(int quyen) {
		this.quyen = quyen;
	}

}
