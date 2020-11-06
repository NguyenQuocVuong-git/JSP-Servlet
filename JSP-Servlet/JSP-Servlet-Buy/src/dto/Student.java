package dto;

public class Student {
	private int studentID;
	private String name;
	private int age;
	private int gender;
	private String role;
	private String username;
	private String password;

	public Student() {
	}
	public Student(int studentID, String name, int age, int gender, String role, String username, String password) {
		super();
		this.studentID = studentID;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.role = role;
		this.username = username;
		this.password = password;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public int getStudentID() {
		return studentID;
	}

	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
