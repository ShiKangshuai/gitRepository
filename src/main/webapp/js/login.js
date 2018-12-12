var params={
    username:'',
    password:''
}
var state1=true,
    state2=true;
$(function () {
    check_username();
    check_password()
    $("#resetBtn").click(function(){
        $(".input-error").text("").css("display","none");
    });
});

function check_username(){
    $("input[name='username']").blur(function(){
        var username = this.value;
        var regUserName = /(^[a-zA-Z0-9_-]{5,14}$)|(^[\u2E80-\u9FFF]{2,6})/;
        if(is_empty(username)){
            $(".username-input-error").text("请输入用户名！").css("display","block");
            state1=false;
        }else if(!regUserName.test(username)){
            $(".username-input-error").text("用户名应为5-14英文或2-6中文").css("display","block");
            state1=false;
        }else{
            $.ajax({
                url:"/checkUserName",
                data:"username="+username,
                type:"get",
                success:function (result) {
                    if(result>0){
                        $(".username-input-error").text("").css("display","none");
                        state1 = true;
                    }else {
                        $(".username-input-error").text("用户名不存在！").css("display","block");
                        state1 = false;
                    }
                }
            });
        }
    });
}
function check_password(){
    $("input[name='password']").blur(function() {
        var password = this.value;
        if(is_empty(password)){
            $(".password-input-error").text("请输入密码！").css("display","block");
            state2 = false;
        }else if(password.trim().length<=6||password.trim().length>=15){
            $(".password-input-error").text("密码长度应大于6小于16位！").css("display","block");
            state2 = false;
        }else{
            $(".password-input-error").text("").css("display","none");
            state2 = true;
        }
    });
}

function loginIn(){
    var $inputs = $('[data-rule]');
    $inputs.trigger('blur');
    if(state1==true&&state2==true){
        params.username=$("input[name='username']").val();
        params.password=$("input[name='password']").val();
        $.ajax({
            url:"/userLogin",
            data:{
                username:params.username,
                password:params.password
            },
            type:"post",
            success:function(result){
                if(result.code==100){//操作成功
                    window.location.href="/to_index_page";
                }else{//操作失败
                    $("#msg").text(result.extend.msg).css("display","block");
                }
            }
        });
    }
}
function is_empty(obj) {
    if(typeof obj == "undefined" || obj == null || obj == ""||obj.trim()==""){
        return true;
    }
    return false;
}