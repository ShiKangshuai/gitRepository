var params={
    username:'',
    email:'' ,
    password:'',
    birthday:'',
    telephone:'',
    name:'',
    sex:''};
var state1=false,
    state2=false,
    state3=false,
    state4=false,
    state5=false,
    state6=false;



$(function () {
    setDateTime();
    check_username();
    check_email();
    check_password();
    check_name();
    check_telephone();
    check_birthday();

    clear_msg();
});
function clear_msg(){
    $("#resetBtn").click(function(){
        $(".input-error").text("");
    });
}
function setDateTime(){
    $('.form_date').datetimepicker({
        language:  'zh-CN',
        format:"yyyy-mm-dd",
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0,
        pickerPosition: "bottom-left"
    });
}
function getValue(){
    params.username = $("input[name='username']").val();
    params.email = $("input[name='email']").val();
    params.password = $("input[name='password']").val();
    params.birthday = $("input[name='birthday']").val();
    params.telephone = $("input[name='telephone']").val();
    params.name = $("input[name='name']").val();
    params.sex = $("input[name='sex']:checked").val();
}
function check_name(){
    $("input[name='name']").blur(function(){
        var name = this.value;
        if(is_empty(name)){
            $(".name-input-error").text("请填写姓名！").css("display","block");
            state5=false;
        }else if(name.length>20){
            $(".name-input-error").text("姓名不合法！").css("display","block");
            state5=false;
        }else {
            $(".name-input-error").text("").css("display","block");
            state5=true;
        }
    });
}
function check_telephone(){
    $("input[name='telephone']").blur(function(){
        var telephone = this.value;
        var regTelephone = /^1[34578]\d{9}$/;
        if(is_empty(telephone)){
            $(".telephone-input-error").text("电话号码不能为空，请输入！").css("display","block");
            state4=false;
        }else if(!regTelephone.test(telephone)){
            $(".telephone-input-error").text("请填写正确的电话号码！").css("display","block");
            state4=false;
        }else{
            $(".telephone-input-error").text("").css("display","none");
            state4=true;
        }
    });
}
function check_password(){
    $("input[name='password']").blur(function() {
        var password = this.value;
        if(is_empty(password)){
            $(".password-input-error").text("密码不能为空，请输入！").css("display","block");
            state3 = false;
        }else if(password.trim().length<=6||password.trim().length>=15){
            $(".password-input-error").text("密码长度应大于6小于16位！").css("display","block");
            state3 = false;
        }else{
            $(".password-input-error").text("").css("display","none");
            state3 = true;
        }
    });
}
function check_username(){
    $("input[name='username']").blur(function(){
        var username = this.value;
        var regUserName = /(^[a-zA-Z0-9_-]{5,14}$)|(^[\u2E80-\u9FFF]{2,6})/;
        if(is_empty(username)){
            $(".username-input-error").text("用户名不能为空，请输入！").css("display","block");
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
                        $(".username-input-error").text("用户名已存在，请更改！").css("display","block");
                        state1 = false;
                    }else {
                        $(".username-input-error").text("").css("display","none");
                        state1 = true;
                    }
                }
            });
        }
    });
}
function check_email(){

    $("input[name='email']").blur(function () {

        var email = this.value;
        var regEmail=/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
        if(is_empty(email)){
            $(".email-input-error").text("邮箱不能为空，请输入！").css("display","block");
            state2 = false;
        }else if(!regEmail.test(email)){
            $(".email-input-error").text("邮箱格式不正确！").css("display","block");
            state2 = false;
        }else{
            $(".email-input-error").text("").css("display","none");
            state2 = true;
        }
    });
}
function check_birthday(){
    $("input[name='birthday']").change(function () {
        var birthday=this.value;
        if(!is_empty(birthday)){
            $(".birthday-input-error").text("").css("display","block");
        }
    });
}
function addUser(){
    getValue();
    var $inputs = $('[data-rule]');
    $inputs.trigger('blur');
    if(is_empty(params.birthday)){
        $(".birthday-input-error").text("请选择出生日期").css("display","block");
        state6=false;
    }else{
        $(".birthday-input-error").text("").css("display","block");
        state6=true;
    }
    if(state1&&state2&&state3&&state4&&state5&&state6){
        $("#resetBtn").trigger('click');
        $.ajax({
            url:"/saveUser",
            data:{
                username:params.username,
                email:params.email,
                password:params.password,
                birthday:params.birthday,
                name:params.name,
                sex:params.sex,
                telephone:params.telephone
            },
            type:"post",
            success:function (result){
                var curWwwPath=window.document.location.href;
                var pathName=window.document.location.pathname;
                var pos=curWwwPath.indexOf(pathName);
                var localhostPath=curWwwPath.substring(0,pos);
                if(result.code==100){
                    window.location.href=localhostPath+"/to_registerSuccess_page";
                }else{
                    window.location.href=localhostPath+"/to_errorPage_page";
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
