package com.example.cinema.bl.promotion;

import com.example.cinema.vo.ResponseVO;
import com.example.cinema.vo.VIPCardForm;
import com.example.cinema.vo.VIPInfoVO;


/**
 * Created by liying on 2019/4/14.
 */

public interface VIPService {

    ResponseVO addVIPCard(int userId);

    ResponseVO getCardById(int id);

    ResponseVO getVIPInfo();

    ResponseVO charge(VIPCardForm vipCardForm);

    ResponseVO getCardByUserId(int userId);

    ResponseVO updateVIPInfo(VIPInfoVO vipInfoVO);

    ResponseVO getChargeHistoryByUserId(int userId);
}
