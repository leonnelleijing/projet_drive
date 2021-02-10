/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function test()  {
    // création de http
    var xhr = new XMLHttpRequest();
    var id = document.getElementById("test").value;
    // Requête au serveur
    xhr.open("GET", "servletBasket?idPanier=" + id + "&action=getBasket");
    

    console.log(xhr.responseXML);
    
    arbres = hxr.responseXML;
    
    xhr.send();
};



$(function(){

    $(".maintip").each(function(index){
        var tip_height=$(".tips:eq("+index+")").height();
        $(this).mouseover(function(){
            var win_height=$(window).height();    //获取浏览器当前可视区域高度
            var obj=$(this).offset();
            var wobj=$(this).width();
            if(obj.top+tip_height<win_height){    //判断B底部是否超过浏览器底部
                //没超过，按默认A和B顶端偏移位置一致即可
                var xobj=obj.left+wobj+"px";
                var yobj=obj.top+"px";
            }
            else{
                //超过了，那么抬高B顶部位置
                var tip_top=win_height-tip_height;
                var xobj=obj.left+wobj+"px";
                var yobj=tip_top+"px";
            }
            //$(this).css({"width":"200px","z-index":"9999","border-right":"none","background":"#fff"});
            $(this).css({"z-index":"9999"});
            $(".tips:eq("+index+")").css({"left":xobj,"top":yobj}).show();
        }).mouseout(function(){
            $(".tips").hide();
            //$(this).css({"width":"200px","z-index":"1","border":"1px solid #E5D1A1","background":"#FFFDD2"})
            $(this).css({"z-index":"1"})
        })
    })

    $(".tips").each(function(){
        $(this).mouseover(function(){
        //$(this).prev(".maintip").css({"width":"200px","z-index":"9999","border-right":"none","background":"#fff"})
        $(this).prev(".maintip").css({"z-index":"9999"})
        $(this).show();
    }).mouseout(function(){
        $(this).hide();
        //$(this).prev(".maintip").css({"width":"200px","z-index":"1","border":"1px solid #E5D1A1","background":"#FFFDD2"});
        $(this).prev(".maintip").css({"z-index":"1"});
          })
    })
});

//$("input[type='number']").inputSpinner();


$(function(){
    
    $(".btnMin").click(function(){	
     var id = $(this).next().attr("id");
     
     document.getElementById(id).value -= 1;
    });	
});

$(function(){
    $(".btnMax").click(function(){
        //var d = document.getElementById("inputPrix1").value;
        //d = d + 1;
        //document.getElementById("inputPrix1").setAttribute("value", d);
        var id = $(this).prev().attr("id");
        document.getElementById(id).value ++;
    });
});


/**
 * Lancement après le chargement du DOM.
 */
//document.addEventListener("DOMContentLoaded", () =>  {
    //document.getElementById("test").addEventListener("keyup",test);
//})
        
$(function(){

    $(".maintip").each(function(index){
        var tip_height=$(".tips:eq("+index+")").height();
        $(this).mouseover(function(){
            var win_height=$(window).height();    //获取浏览器当前可视区域高度
            var obj=$(this).offset();
            var wobj=$(this).width();
            if(obj.top+tip_height<win_height){    //判断B底部是否超过浏览器底部
                //没超过，按默认A和B顶端偏移位置一致即可
                var xobj=obj.left+wobj+"px";
                var yobj=obj.top+"px";
            }
            else{
                //超过了，那么抬高B顶部位置
                var tip_top=win_height-tip_height;
                var xobj=obj.left+wobj+"px";
                var yobj=tip_top+"px";
            }
            //$(this).css({"width":"200px","z-index":"9999","border-right":"none","background":"#fff"});
            $(this).css({"z-index":"9999"});
            $(".tips:eq("+index+")").css({"left":xobj,"top":yobj}).show();
        }).mouseout(function(){
            $(".tips").hide();
            //$(this).css({"width":"200px","z-index":"1","border":"1px solid #E5D1A1","background":"#FFFDD2"})
            $(this).css({"z-index":"1"})
        })
    })

    $(".tips").each(function(){
        $(this).mouseover(function(){
        //$(this).prev(".maintip").css({"width":"200px","z-index":"9999","border-right":"none","background":"#fff"})
        $(this).prev(".maintip").css({"z-index":"9999"})
        $(this).show();
    }).mouseout(function(){
        $(this).hide();
        //$(this).prev(".maintip").css({"width":"200px","z-index":"1","border":"1px solid #E5D1A1","background":"#FFFDD2"});
        $(this).prev(".maintip").css({"z-index":"1"});
          })
    })
});

//$("input[type='number']").inputSpinner();

               
        /*
        $(doucment).ready(function(){
                alert("oui");
                $(".btnMin1").click(function(){	
             console.log(document.getElementById("inputPrix1").value);
             document.getElementById("inputPrix1").value -= 1;
            });	
        } )
        
         */   

        /*$(function(){

            $(".maintip").each(function(index){   //遍历A部分，注意这里绑定事件用了index参数
                $(this).mouseover(function(){   //鼠标经过A时触发事件
                    var obj=$(this).offset();   //获取被鼠标经过的A的偏移位置，offset()是个好东西，不懂的朋友得去了解下
                    var xobj=obj.left+$(this).width()+"px"; //后面要让B水平偏移的距离，这里的“200”是可自定义的，当然你可以改为$(this).width()来获得跟A一样的宽度
                    var yobj=obj.top+"px";     //后面要让B垂直偏移的距离
                    //$(this).css({"width":"200px","z-index":"9999","border-right":"none","background":"#fff"});  //A改变样式，变为选中状态的效果
                    $(this).css({"z-index":"9999"});  //A改变样式，变为选中状态的效果
                    $(".tips:eq("+index+")").css({"left":xobj,"top":yobj}).show();   //对应的（这里利用了索引）B改变样式并显示出来
                    })
                .mouseout(function(){     //鼠标离开A时触发的事件
                    $(".tips").hide();     //B隐藏
                    //$(this).css({"width":"200px","z-index":"1","border":"1px solid #E5D1A1","background":"#FFFDD2"})   //A变回原始样式
                    $(this).css({"z-index":"1"})   //A变回原始样式
                })
            })

                 $(".tips").each(function(){  //遍历B
                    $(this).mouseover(function(){  //鼠标经过B时触发事件
                    //$(this).prev(".maintip").css({"width":"200px","z-index":"9999","border-right":"none","background":"#fff"})  //对应的A变为选中状态效果
                    $(this).prev(".maintip").css({"z-index":"9999"})
                    $(this).show();  //A不要隐藏了，解决因为上面写的鼠标离开A导致A隐藏
                })
                .mouseout(function(){  //鼠标离开B触发事件，其实就是让B隐藏，同时A变为原始状态
                    $(this).hide();
                    //$(this).prev(".maintip").css({"width":"200px","z-index":"1","border":"1px solid #E5D1A1","background":"#FFFDD2"});
                    $(this).prev(".maintip").css({"z-index":"1"});
                })
            })
        })
        */  
