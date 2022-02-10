package com.example.cinema.vo;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * Created by liying on 2019/4/16.
 */
@Getter
@Setter
public class TicketForm {

	/**
	 * 用户id
	 */
	private int userId;
	/**
	 * 排片id
	 */
	private int scheduleId;

	private List<SeatForm> seats;

	public TicketForm() {
	}
	
}
