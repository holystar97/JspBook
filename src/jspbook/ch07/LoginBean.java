package jspbook.ch07;

import java.io.UnsupportedEncodingException;

public class LoginBean {

	private String userid;
	private String passwd;
	
	final String _userid="myuser";
	final String _passwd="1234";
	
	
	public String getUserid() {
		return userid;
	}


	public void setUserid(String userid) {		
		try {
			this.userid = new String(userid.getBytes("8859_1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}


	public String getPasswd() {
		return passwd;
	}


	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}


	public String get_userid() {
		return _userid;
	}


	public String get_passwd() {
		return _passwd;
	}


	public boolean checkUser() {
		if(userid.equals(_userid) && passwd.equals(_passwd)) {
			return true;
		}
		else {
			return false;
		}
	}
}
