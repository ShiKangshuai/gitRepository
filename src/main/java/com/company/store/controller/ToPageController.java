/**
 * FileName: ToPageController
 * Author:   shikangshuai
 * Date:     2018/12/7 10:22
 * Description:
 */
package com.company.store.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 〈一句话功能简述〉<br> 
 *
 * @author shikangshuai
 * @create 2018/12/7
 */
@Controller("toPageController")
public class ToPageController {
    /**
     * 功能描述: <br>
     * 〈跳转到注册页面〉
     * @return:String
     * @Author:shikangshuai
     * @Date: 2018/12/7 13:58
     */
    @RequestMapping("/to_register_page")
    public String to_register_page(){
        return "register";
    }
    /**
     * 功能描述: <br>
     * 〈跳转到登录页面〉
     * @return:
     * @Author:shikangshuai
     * @Date: 2018/12/7 13:59
     */
    @RequestMapping("/to_login_page")
    public String to_login_page(){
        return "login";
    }
}
