package net.grp.model;

public class Users {

	private String regNo, rNo, fName, lName, gender, mobile, email, pass;

	public Users(String regNo, String rNo, String fName, String lName, String gender, String mobile, String email,
			String pass) {
		super();
		this.regNo = regNo;
		this.rNo = rNo;
		this.fName = fName;
		this.lName = lName;
		this.gender = gender;
		this.mobile = mobile;
		this.email = email;
		this.pass = pass;
	}

	public Users() {
		super();
	}

	public String getRegNo() {
		return regNo;
	}

	public void setRegNo(String regNo) {
		this.regNo = regNo;
	}

	public String getrNo() {
		return rNo;
	}

	public void setrNo(String rNo) {
		this.rNo = rNo;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
}
