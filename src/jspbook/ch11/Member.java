package jspbook.ch11;

public class Member {
	private String name; // 회원 정보 멤버 변수
	private String email;
	public Member(String name, String email) {
		this.name=name;
		this.email=email;
	}
	
	public Member() {
		name="홍길동";
		email="test@test.net";
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
