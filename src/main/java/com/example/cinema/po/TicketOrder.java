package com.example.cinema.po;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter@Setter
public class TicketOrder {

    private int orderId;

    private int couponId;

    private List<Ticket> ticketList;

}
