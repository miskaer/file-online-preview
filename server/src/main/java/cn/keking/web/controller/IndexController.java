package cn.keking.web.controller;

import cn.hutool.db.ds.simple.SimpleDataSource;
import cn.hutool.log.StaticLog;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.sql.DataSource;

/**
 *  页面跳转
 * @author yudian-it
 * @date 2017/12/27
 */
@Controller
public class IndexController {

    @GetMapping( "/index")
    public String go2Index(){
        return "/main/index";
    }

    @GetMapping( "/record")
    public String go2Record(){
        return "/main/record";
    }

    @GetMapping( "/sponsor")
    public String go2Sponsor(){
        return "/main/sponsor";
    }

    @GetMapping( "/integrated")
    public String go2Integrated(){
        return "/main/integrated";
    }

    @GetMapping( "/")
    public String root() {
        return "/main/index";
    }
    @GetMapping( "/doc")
    public String doc() {
        return "/455626285/EMS9000能耗管理系统用户手册-V1.30.pdf";
    }
    @GetMapping( "/ems")
    public String ems() {
//        DataSource ds = new SimpleDataSource("jdbc:mysql://localhost:3306/dbName", "root", "123456");
//        ds.

       return "";
    }

}
