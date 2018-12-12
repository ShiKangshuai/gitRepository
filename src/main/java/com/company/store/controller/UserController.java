/**
 * FileName: UserController
 * Author:   shikangshuai
 * Date:     2018/12/7 10:43
 * Description:
 */
package com.company.store.controller;

import com.company.store.domain.User;
import com.company.store.service.UserService;
import com.company.store.utils.MailUtil;
import com.company.store.utils.Msg;
import com.company.store.utils.UUIDUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 〈一句话功能简述〉<br> 
 *
 * @author shikangshuai
 * @create 2018/12/7
 */
@Controller("userController")
public class UserController {

    @Autowired
    private UserService userService;
    /**
     * 功能描述: <br>
     * 〈注册前检查用户名是否存在〉
     * @return:Long
     * @Author:shikangshuai
     * @Date: 2018/12/7 10:59
     */
    @ResponseBody
    @RequestMapping("/checkUserName")
    public long checkUserName(@Param(value ="username") String username){
        return userService.checkUserName(username);
    }
    /**
     * 功能描述: <br>
     * 〈新增用户〉
     * @return:Msg
     * @Author:shikangshuai
     * @Date: 2018/12/7 11:40
     */
    @ResponseBody
    @RequestMapping("/saveUser")
    public Msg saveUser(@Valid User user, BindingResult result, Model model){
        //HttpServletRequest request
        String code = UUIDUtils.getCode();
        String uid = UUIDUtils.getId();
        user.setUid(uid);
        user.setCode(code);
        if(result.hasErrors()){
            //fieldError.getField()错误的字段名，fieldError.getDefaultMessage()错误信息
            Map<String,Object> map = new HashMap<>();
            List<FieldError> errors = result.getFieldErrors();
            for(FieldError fieldError:errors){
                map.put(fieldError.getField(),fieldError.getDefaultMessage());
            }
           model.addAttribute("msg","注册失败请重新注册！");
            return Msg.fail().add("errorFields",map);
        }else {
            if(userService.saveUser(user)>0){
                new Thread(new MailUtil(user.getEmail(),user.getCode())).start();
                model.addAttribute("msg","注册成功，请到邮箱验证！");
                return Msg.success();
            }else{
                model.addAttribute("msg","注册失败请重新注册！");
                return Msg.fail();
            }

        }
    }
    /**
     * 功能描述: <br>
     * 〈跳转到注册验证提示页面〉
     * @return:String
     * @Author:shikangshuai
     * @Date: 2018/12/12 9:50
     */
    @RequestMapping("/to_registerConfigInfo_page")
    public String to_registerConfig_page(@Param(value="code") String code,Model model){
        if(userService.updateState(code)>0){
            model.addAttribute("msg","用户激活成功!");
            return "registerConfigInfo";
        }else{
            model.addAttribute("msg","用户激活失败！");
            return "errorPage";
        }

    }

}
