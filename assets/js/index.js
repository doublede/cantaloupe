$(function(){
    var sWidth=$("#focus").width();
    var len=$("#focus ul li").length;
    var index=0;
    var picTimer;


var btn = "<div class='btnBg'></div><div class='btn'>";
for(var i=0; i < len; i++) {
btn += "<span></span>";
}
btn += "</div><div class='preNext pre'></div><div class='preNext next'></div>";
$("#focus").append(btn);
$("#focus .btnBg").css("opacity",0.5); 


//为小按钮添加鼠标滑入事件，以显示相应的内容
$("#focus .btn span").css("opacity",0.4).mouseenter(function() {
index = $("#focus .btn span").index(this);     //返回当前元素在"focus .btn span"中的索引位置
showPics(index);
}).eq(0).trigger("mouseenter");

//上一页、下一页按钮透明度处理
$("#focus .preNext").css("opacity",0.2).hover(function() {
$(this).stop(true,false).animate({"opacity":"0.5"},300);
},function() {
$(this).stop(true,false).animate({"opacity":"0.2"},300);
});

//上一页按钮
$("#focus .pre").click(function() {
index -= 1;
if(index == -1) {index = len - 1;}
showPics(index);
});

//下一页按钮
$("#focus .next").click(function() {
index += 1;
if(index == len) {index = 0;}
showPics(index);
});

//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
$("#focus ul").css("width",sWidth * (len));

//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
$("#focus").hover(function() {
clearInterval(picTimer);
},function() {
picTimer = setInterval(function() {
showPics(index);
index++;
if(index == len) {index = 0;}
},3000); //此4000代表自动播放的间隔，单位：毫秒
}).trigger("mouseleave");

//显示图片函数，根据接收的index值显示相应的内容
function showPics(index) { //普通切换
var nowLeft = -index*sWidth; //根据index值计算ul元素的left值
$("#focus ul").stop(true,false).animate({"left":nowLeft},300); //通过animate()调整ul元素滚动到计算出的position
//$("#focus .btn span").removeClass("on").eq(index).addClass("on"); //为当前的按钮切换到选中的效果
$("#focus .btn span").stop(true,false).animate({"opacity":"0.4"},300).eq(index).stop(true,false).animate({"opacity":"1"},300); //为当前的按钮切换到选中的效果
}
}); 



//登录窗口
function logInWindow(){
    var dlkey=document.getElementById("denglu_key");
    dlkey.onclick=function(){
        var cHight=document.documentElement.clientHeight;
        var sWidth=document.documentElement.scrollWidth;

        var odenglu=document.createElement("div");
            odenglu.id="denglu";
            odenglu.style.height=cHight+"px";
            odenglu.style.width=sWidth+"px";
            document.body.appendChild(odenglu);
        
        var odlContainer=document.createElement("div");
            odlContainer.id="dlContainer";
            odlContainer.innerHTML="<div class='dlHeader'>登录</div><div id='close'></div><div id='dlLogin'><form class='dlForm' action='' method=''><input class='account' type='text' name='' ></br><input class='password' type='password' name=''></br><a class='dlSigned l' href=''>没有账号？</a><a class='dlForget r' href='' >忘记密码？</a></br><input class='submitKey' type='submit' name='' value='登录'></form></div>"

            document.body.appendChild(odlContainer);
        
        var dHeight=odlContainer.offsetHeight;
            dWidth=odlContainer.offsetWidth;

            odlContainer.style.top=(cHight-dHeight)/2+"px";
            odlContainer.style.left=(sWidth-dWidth)/2+"px";

       var oclose=document.getElementById("close");
           oclose.onclick=odenglu.onclick=function(){
           document.body.removeChild(odenglu);
           document.body.removeChild(odlContainer);
           }


    //登录验证操作
    var psubmitKey=document.getElementsByClassName("submitKey")[0];      //IE8及以前不支持！
    var paccount=document.getElementsByClassName("account")[0];
    var ppassword=document.getElementsByClassName("password")[0];



        psubmitKey.onclick=function(){
            var xhr=new XMLHttpRequest();

            xhr.onreadystatechange=function(){
                if(xhr.readyState==4){
                    if((xhr.status >=200 && xhr.status<300) || xhr.status==304){
                        //返回结果处理
                        var rsp=JSON.parse(xhr.responseText);
                        if(rsp.success){
                            //验证成功
                            //效果记得加====================================================
                           var dlkey=document.getElementsByClassName("tt-login")[0];
                           dlkey.innerHTML=paccount.value; 

                            document.body.removeChild(odenglu);
                            document.body.removeChild(odlContainer);
                        }else{

                            //验证失败
                            alert("输入信息有误");
                        
                        }
                    }else{
                        //状态码错误处理
                        alert("状态码错误");
                    }
                }
            }
            xhr.open("post","login.php",true);
            var data="username="+paccount.value+"&password="+ppassword.value;

            xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");

            xhr.send(data);

        }
    }
}

addLoadEvent(logInWindow);




//主内容的异步处理

function block2Sort(){
    var sselects=document.getElementsByClassName("s-select");

    sselects[0].onclick=sselects[1].onclick=sselects[2].onclick=sselects[3].onclick=function(){
        var xhr=new XMLHttpRequest();
        
        xhr.onreadystatechange=function(){
                if(xhr.readyState==4){
                    if((xhr.status >=200 && xhr.status<300) || xhr.status==304){
                        //返回结果处理
                         var c=new Array();
                        var rsp=JSON.parse(xhr.responseText);
                        for(var i=0,j=1;i<=4;i++,j++){
                             c[i]=document.getElementById("c"+j);
                             c[i].innerHTML="<div class='ccc'><img src='"+rsp[i].image+"' title='' alt=''><div class='allintro'><h4>"+rsp[i].bookname+"</h4><h5>作者："+rsp[i].author+"</h5><p>"+rsp[i].intro+"</p></div></div><ul><li><a href='###'><i class='fa fa-star-o'></i>&nbsp;收藏</a></li><li>|</li><li><a href='###' class='comment_key' id='ck"+j+"'><i class='fa fa-commenting-o'></i>&nbsp;评论</a></li><li>|</li><li><a href='###'><i class='fa fa-thumbs-o-up'></i>&nbsp;点赞</a></li></ul>";



                        }
                       
                        
                        
                    }else{
                        //状态码错误处理
                        alert("状态码错误");
                    }
                }
                comment();
            }

    

  //请求信息处理
    var choose=this.id;
    var url="sselect.php";
    url=addURLParam(url,"which",choose);
    xhr.open("get",url,true);
  //  xhr.setRequestHeader();
    xhr.send();

    
    }

}

addLoadEvent(block2Sort);


//评论请求处理
function comment(){
    var commentKey=document.getElementsByClassName("comment_key");

    commentKey[0].onclick=commentKey[1].onclick=commentKey[2].onclick=commentKey[3].onclick=commentKey[4].onclick=function(){
  
        
        var number=this.id;  
        if(document.getElementById(number+"cm")){
            
            document.getElementsByClassName(number)[0].removeChild(document.getElementById(number+"cm"));
        }else{
        var section=document.getElementsByClassName(number)[0];
        var ccommentBlock=document.createElement("div");
        ccommentBlock.setAttribute("class","comment_block");
        ccommentBlock.setAttribute("id",number+"cm")
        ccommentBlock.innerHTML="<form><input class='comment_input' type='text'/><br/><input class='inputKey' type='submit' value='评论'/><br/></form><ul><li><span class='username'>double_de</span>&nbsp;:&nbsp;<span class='ucomment'>《繁花》写人物情态寥寥数笔，「不响」「很高兴」「落下两滴泪来」，点到即止，他们拒绝被读者融入到脉络血液里，而展示出的大抵也只是一种平凡世相。于是我们觉得找回了熟悉的感动，或许这才是一脉相承的中国式小说，市井人情，一个接一个的流水席。</span><br/><span class='time'>12月2日 14:33</span><span class='praise r'><i class='fa fa-thumbs-o-up'></i>&nbsp;0</span></li><li><span class='username'>double_de</span>&nbsp;:&nbsp;<span class='ucomment'>《繁花》写人物情态寥寥数笔，「不响」「很高兴」「落下两滴泪来」，点到即止，他们拒绝被读者融入到脉络血液里，而展示出的大抵也只是一种平凡世相。于是我们觉得找回了熟悉的感动，或许这才是一脉相承的中国式小说，市井人情，一个接一个的流水席。</span><br/><span class='time'>12月2日 14:33</span><span class='praise r'><i class='fa fa-thumbs-o-up'></i>&nbsp;0</span></li></ul>";

        document.getElementsByClassName(number)[0].appendChild(ccommentBlock);
        }
        


    }
}

addLoadEvent(comment);

