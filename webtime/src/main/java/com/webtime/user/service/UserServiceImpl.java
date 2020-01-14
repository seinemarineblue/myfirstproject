package com.webtime.user.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webtime.command.CartVO;
import com.webtime.command.ContentVO;
import com.webtime.command.UserVO;
import com.webtime.user.mapper.userMapper;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	private userMapper userMapper;

	@Override
	public int idFind(UserVO vo) {
		return userMapper.idFind(vo);
	}

	@Override
	public int join(UserVO vo) {
		return userMapper.join(vo);
	}

	@Override
	public UserVO login(UserVO vo) {
		return userMapper.login(vo);
	}

	@Override
	public UserVO userInfo(String userId) {
		return userMapper.userInfo(userId);
	}
	
	@Override
	public int update(UserVO vo) {
		return userMapper.update(vo);
	}


	@Override
	public ArrayList<ContentVO> mybooking(String id) {
		return userMapper.mybooking(id);
	}

	@Override
	public int addCart(CartVO vo) {
		return userMapper.addCart(vo);
	}

	@Override
	public ArrayList<CartVO> cartList(String user_id) {
		return userMapper.cartList(user_id);
	}

	@Override
	public int deleteCart(CartVO vo) {
		return userMapper.deleteCart(vo);
	}

	@Override
	public int cartCount(String user_id) {
		return userMapper.cartCount(user_id);
	}

}