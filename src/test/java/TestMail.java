/**
 * FileName: TestMail
 * Author:   shikangshuai
 * Date:     2018/12/12 10:32
 * Description:
 */

import com.company.store.utils.MailUtil;

/**
 * 〈一句话功能简述〉<br>
 *
 * @author shikangshuai
 * @create 2018/12/12
 */
public class TestMail {
    public static void main(String[] args) {
        String email="1873125818@qq.com";
        String code = "5201314sks";
        new Thread(new MailUtil(email,code)).start();
    }

}
