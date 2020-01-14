package com.webtime.command;


public class FaqVO {
	private int Fno;
	private String Type;
	private String Title;
	private String Content;
	public int getFno() {
		return Fno;
	}
	public void setFno(int fno) {
		Fno = fno;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public FaqVO(int fno, String type, String title, String content) {
		super();
		Fno = fno;
		Type = type;
		Title = title;
		Content = content;
	}
	public FaqVO() {
		super();
	}
	
	
}
