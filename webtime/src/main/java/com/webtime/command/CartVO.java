package com.webtime.command;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartVO {

	private int cno;
	private String user_id;
	private int num;
	private String title;
	private int price;

}
