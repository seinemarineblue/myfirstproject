package com.webtime.command;

public class TicketVO {

	private int num;
	private String title;
	private int price;
	private String content;
	private String place;
	private String playday;
	private int runtime;
	private int hit;
	private String type;
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getPlayday() {
		return playday;
	}
	public void setPlayday(String playday) {
		this.playday = playday;
	}
	public int getRuntime() {
		return runtime;
	}
	public void setRuntime(int runtime) {
		this.runtime = runtime;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public TicketVO(int num, String title, int price, String content, String place, String playday, int runtime,
			int hit, String type) {
		super();
		this.num = num;
		this.title = title;
		this.price = price;
		this.content = content;
		this.place = place;
		this.playday = playday;
		this.runtime = runtime;
		this.hit = hit;
		this.type = type;
	}
	
	public TicketVO() {}
	@Override
	public String toString() {
		return "TicketVO [num=" + num + ", title=" + title + ", price=" + price + ", content=" + content + ", place="
				+ place + ", playday=" + playday + ", runtime=" + runtime + ", hit=" + hit + ", type=" + type + "]";
	}
	
	
}
