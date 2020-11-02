package com.WorldVision.dto;

import java.sql.Timestamp;

public class Member {

	private String id;
	private String pwd;
	private String newPwd;
	private String name; 
	private String birth;
	private String gender;
	private String phone;
	private String email1;
	private String email2;
	private Timestamp indate; 
	private String use;
	private String email;
	private int plusLoginFailCount;
	private String LockStatus;
	
	
	
	public int getPlusLoginFailCount() {
		return plusLoginFailCount;
	}
	public void setPlusLoginFailCount(int plusLoginFailCount) {
		this.plusLoginFailCount = plusLoginFailCount;
	}
	public String getLockStatus() {
		return LockStatus;
	}
	public void setLockStatus(String lockStatus) {
		LockStatus = lockStatus;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getNewPwd() {
		return newPwd;
	}
	public void setNewPwd(String newPwd) {
		this.newPwd = newPwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	public String getUse() {
		return use;
	}
	public void setUse(String use) {
		this.use = use;
	}
	
}
