package com.example.cinema.po;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Timestamp;

/**
 * Created by liying on 2019/4/16.
 */
@Getter
@Setter
@NoArgsConstructor
public class Coupon {
	/**
	 * 优惠券id
	 */
	private int id;
	/**
	 * 优惠券描述
	 */
	private String description;
	/**
	 * 优惠券名称
	 */
	private String name;
	/**
	 * 优惠券使用门槛
	 */
	private double targetAmount;
	/**
	 * 优惠券优惠金额
	 */
	private double discountAmount;
	/**
	 * 可用时间
	 */
	private Timestamp startTime;
	/**
	 * 失效时间
	 */
	private Timestamp endTime;
}
