package test.place.dto;

public class PlaceDto {
	private int num;
	private String name;
	private String addr;
	private int score;
	
	public PlaceDto(){}

	public PlaceDto(int num, String name, String addr, int score) {
		super();
		this.num = num;
		this.name = name;
		this.addr = addr;
		this.score = score;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	};

	
}
