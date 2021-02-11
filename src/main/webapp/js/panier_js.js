/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function clickMinus()  {

    console.log($(this).prev().val())
    if( $(this).next().val()>0)
        $(this).next().val($(this).next().val() -1 )
    var quantite=  $(this).next().val()
    var idProduct = $(this).prev().val()
    //var prixUni = $(this).siblings("div[class='prixUniProduit']").firstChild.nodeValue;
    //console.log($(this).parent().parent().prev())
    var prixUni =$(this).parent().parent().prev().find(".unitPirce").text();
   var tatalPrice =$(this).parent().parent().next().find(".prixTtProduit p")
      tatalPrice.text(parseFloat(prixUni) * quantite+ " €")
////    // Requête au    serveur
  sendProductQuantity(quantite,idProduct)
  updatePrice()
    };
    
function clickMaxis()  {
    console.log($(this).prev().prev().val())
    $(this).prev().val(parseInt($(this).prev().val())+1)
    var quantite=  $(this).prev().val()
    var idProduct = $(this).prev().prev().prev().val()
    //var prixUni = $(this).siblings("div[class='prixUniProduit']").firstChild.nodeValue;
    //console.log($(this).parent().parent().prev())
    var prixUni =$(this).parent().parent().prev().find(".unitPirce").text();
     var tatalPrice =$(this).parent().parent().next().find(".prixTtProduit p")
      tatalPrice.text(parseFloat(prixUni) * quantite+ " €")
////    // Requête au    serveur
  sendProductQuantity(quantite,idProduct)
  updatePrice()
    };

function updatePrice(){
     var numProduit = $(".singlePriceTotal").length;
    var PriceTotal = 0;
    for (i = 0; i < numProduit; i++) {
        PriceTotal = PriceTotal + parseInt($(".singlePriceTotal").eq(i).text());

    }
    $(".prixLabel").text(" ");
    $(".prixLabel").text(PriceTotal + " €");
}
    
function sendProductQuantity(quantite,idProduct){
        var xhr = new XMLHttpRequest();
    xhr.open("GET", "servletBasket?action=changeQuantity&quantite=" + quantite + "&idProduct=" + idProduct);
//    alert(quantite);
//     On précise ce que l'on va faire quand on aura reçu la réponse du serveur.
    xhr.onload = function() {
        
        if (xhr.status === 200) {
            
            alert("succes")
            
            }
            
            
        }
        
        xhr.send();
}



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

// 数量框按钮控制自增减
$(document.documentElement).on("click",".on-number",function () {
        var $val=$(this).siblings("input[type='number']"),
            val = parseInt($val.val(),10) + parseInt($(this).data("v"));
        $val.val(isNaN(val) ? 0 : val);
});


/**
 * Lancement après le chargement du DOM.
 */

        
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
    var totale =0 
     $(".btnMin").click(clickMinus)
     $(".btnMax").click(clickMaxis)
     updatePrice()
});

