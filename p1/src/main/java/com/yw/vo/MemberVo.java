package com.yw.vo;

public class MemberVo {
	private String id;
	private String name;
	private String password;
	private String auth;
	private int enabled;
	private String email;
	private String gender;
	private String birth;
	private String phoneNum;
	
	public MemberVo() {
		
	}
	public MemberVo(String id, String name, String password, String auth, int enabled, String email, String gender,
			String birth, String phoneNum) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.auth = auth;
		this.enabled = enabled;
		this.email = email;
		this.gender = gender;
		this.birth = birth;
		this.phoneNum = phoneNum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
	@Override
	public String toString() {
		return "MemberVo [id=" + id + ", name=" + name + ", password=" + password + ", auth=" + auth + ", enabled="
				+ enabled + ", email=" + email + ", gender=" + gender + ", birth=" + birth + ", phoneNum=" + phoneNum
				+ "]";
	}
}
