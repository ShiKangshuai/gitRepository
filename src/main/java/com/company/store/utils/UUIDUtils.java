/**
 * FileName: UUIDUtils
 * Author:   shikangshuai
 * Date:     2018/11/29 14:58
 * Description:
 */
package com.company.store.utils;

import java.util.UUID;

/**
 * 〈一句话功能简述〉<br> 
 *
 * @author shikangshuai
 * @create 2018/11/29
 */
public class UUIDUtils {
    /**
     * 随机生成id
     * @return
     */
    public static String getId(){
        return UUID.randomUUID().toString().replace("-", "").toUpperCase();
    }

    public static String getUUID64(){
        return getId()+getId();
    }

    /**
     * 生成随机码
     * @return
     */
    public static String getCode(){
        return getId()+getId();
    }
}
