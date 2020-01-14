package com.webtime.command;

import java.util.ArrayList;

import lombok.Data;

@Data
public class ContentVO {
	private int num;
	private String id;
	private String user_name;
	private String title;
	private String bank;
	private String card_num;
	private String seat_num;
	
	private int price;
	
}
