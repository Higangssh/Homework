package test.user.dto;

public class UserDto {
	private String id;
	private String pwd;
	private String email;
	private String profile;
	private String regdata;
	
	public UserDto() {}

	public UserDto(String id, String pwd, String email, String profile, String regdata) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.email = email;
		this.profile = profile;
		this.regdata = regdata;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getRegdata() {
		return regdata;
	}

	public void setRegdata(String regdata) {
		this.regdata = regdata;
	};
	
	
}
