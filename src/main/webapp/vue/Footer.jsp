<%-- 
    Document   : Footer
    Created on : 6 févr. 2021, 16:41:35
    Author     : leonl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
            <div class="footer ">
            <div class="container">
                <div class="row footer-top">
                    <div class="col-sm-12 col-lg-12 col-lg-offset-1">
                        <div class="row about">
                            <div class="col-xs-3">
                                <h4>About Us</h4>
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="">Smart</a>
                                    </li>
                                    <li>
                                        <a href="">Informations entreprise</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xs-3">
                                <h4>Strategies</h4>
                                <ul class="list-unstyled">
                                    <li>
                                        <a target="_blank" title="" href="">Anti-coVid19</a>
                                    </li>
                                    <li>
                                        <a href="">Livraison rapide</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xs-3">
                                <h4>Connect Us</h4>
                                <ul class="list-unstyled">
                                    <li>
                                        <a target="_blank" title="" href="">Instagramme</a>
                                    </li>
                                    <li>
                                        <a href="">FaceBook</a>
                                    </li>
                                    <li>
                                        <a href="">Telephone</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xs-3">
                                <h4>Connect Magasin</h4>
                                <ul class="list-unstyled">
                                    <li>
                                        <a target="_blank" title="" href="">Adresse Magasin</a>
                                    </li>
                                    <li>
                                        <a href="">Telephone</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <hr>
                <div class="row footer-bottom">
                    <ul class="list-inline text-center">
                        <li>Copyright &copy;2021. Smart Drive Software All Rights Reserved.</li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    
    <script type="text/javascript">
        
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
        })
        
        $(".btn").window.location.href = "http://localhost:8080/vue/PagePanier.jsp";
    </script>
    <script src="/js/addPanier.js"></script>
</html>
