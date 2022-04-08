package com.example.cinema;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@EnableScheduling
@SpringBootApplication
public class CinemaApplication {

    //测试一下啊，是否可以上传到github
    public static void main(String[] args) {
        SpringApplication.run(CinemaApplication.class, args);
    }

}
