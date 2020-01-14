package com.webtime.command;

import java.sql.Timestamp;
import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserVO {
 
	private String id;
	private String pw;
	private String name; 

	private Timestamp regdate;
	
}
