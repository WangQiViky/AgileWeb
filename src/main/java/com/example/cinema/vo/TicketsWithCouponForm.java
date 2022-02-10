package com.example.cinema.vo;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class TicketsWithCouponForm {
	
	private List<Integer> ticketIdList;

	private int couponId;
}
