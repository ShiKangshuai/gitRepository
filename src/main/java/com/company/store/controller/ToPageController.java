/**
 * FileName: ToPageController
 * Author:   shikangshuai
 * Date:     2018/12/7 10:22
 * Description:
 */
package com.company.store.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
     * 〈注册成功〉
     * @return:String
     * @Author:shikangshuai
     * @Date: 2018/12/11 19:53
     */
    @RequestMapping("/to_registerSuccess_page")
    public String to_registerSuccess_page(Model model){
        model.addAttribute("msg","注册成功！请到邮箱激活！");
        return "registerSuccess";
    }
    /**
     * 功能描述: <br>
     * 〈注册失败〉
     * @return:String
     * @Author:shikangshuai
     * @Date: 2018/12/11 20:01
     */
    @RequestMapping("to_errorPage_page")
    public  String to_errorPage_page(Model model){
        model.addAttribute("msg","注册失败！请重新注册！");
        return "errorPage";
    }
    /**
     * 功能描述: <br>
     * 〈跳转到登录页面〉
     * @return:String
     * @Author:shikangshuai
     * @Date: 2018/12/11 19:53
     */
    @RequestMapping("/to_login_page")
    public String to_login_page(){
        return "login";
    }

    /**
     * 功能描述: <br>
     * 〈跳转到首页〉
     * @return:String
     * @Author:shikangshuai
     * @Date: 2018/12/12 16:49
     */
    @RequestMapping("/to_index_page")
    public String to_index_page(){
        return "index";
    }

}
