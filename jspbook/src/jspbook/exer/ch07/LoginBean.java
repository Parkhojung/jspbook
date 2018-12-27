package jspbook.exer.ch07;

public class LoginBean {
	private int id;
	private int password;
	
	static int uid = 1234;
	static int upassword= 1111;
	
	public LoginBean() {}
	
	public String checkUser() {
		String resString;
		if(id != uid) {
			resString = "존재하지 않는 아이디";
		}
		else {
			if(password == upassword) {
				resString = "로그인 완료";
			}
			else{
				resString ="비밀번호 틀림";
			}
		}
		return resString;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPassword() {
		return password;
	}

	public void setPassword(int password) {
		this.password = password;
	}
	
	
}
