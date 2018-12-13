/**
 * FileName: CategotyController
 * Author:   shikangshuai
 * Date:     2018/12/13 8:45
 * Description:
 */
package com.company.store.controller;

import com.company.store.domain.Categoty;
import com.company.store.service.CategotyService;
import com.company.store.utils.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 〈一句话功能简述〉<br> 
 *分类列表
 * @author shikangshuai
 * @create 2018/12/13
 */
@Controller("categotyController")
@RequestMapping("/categoty")
public class CategotyController {
    @Autowired
    private CategotyService categotyService;

    @RequestMapping("/findCategotyList")
    @ResponseBody
    public Msg findCategotyList(Model model){
        try {
            List<Categoty> categotyList = categotyService.findCategotyList();
            /*model.addAttribute("categotyList",categotyList);*/
            return Msg.success().add("categotyList",categotyList);
        } catch (Exception e) {
            e.printStackTrace();
            return Msg.fail();
        }
    }
}
