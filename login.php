<?php
header("Content-Type:application/json;charset=utf-8");

$user=array(
    array("id"=>"1","username"=>"double_de","password"=>"704810"),
    array("id"=>"2","username"=>"aa","password"=>"111"),
    array("id"=>"3","username"=>"bb","password"=>"222"),
    array("id"=>"4","username"=>"cc","password"=>"333")
);




    if(!isset($_POST["username"]) || empty($_POST["username"]) ){
    $result= '{"success":false,"msg":"用户名有误"}';
   
    }else if(!isset($_POST["password"]) || empty($_POST["password"]) ){
    $result= '{"success":false,"msg":"密码信息有误"}';
    }else {
        global $user;
         $result='{"success":false,"msg":"用户名或密码错误"}';
         foreach($user as $key=>$value){
            if($value["username"]==$_POST["username"] and $value["password"]==$_POST["password"]){
                //验证成功，返回信息
                $result= '{"success":true,"msg":"登录成功"}';
                break;

            }
        }

    }


echo $result;



?> 