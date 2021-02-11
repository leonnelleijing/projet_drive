 $(function() {         
          
          let array = [];
            let defaultArray = [];
            let prev;
            let after;
            $('.produit').each(function (index) {
                array[index] = $(this);
                defaultArray[index] = $(this);
            })
            
            
            $('#sort_by_price').change(function() {
                    var index =$(this).val();
                    console.log(index)
                    if(index==0){
                        $('.lstPro').empty();
                        for(let i=0;i<defaultArray.length;i++){
                            $('.lstPro').append(defaultArray[i])
                        }
                        return;
                    }else if(index==1){
                        for(let i=0;i<array.length;i++){
                            for (let j=0;j<array.length-i-1;j++){
                            prev = array[j].find(".kiloprice").children('strong').html();
                            after = array[j+1].find('.kiloprice').children('strong').html();
                             console.log(array[j].find(".kiloprice"));
                            //console.log(prev,"--------",after)
                                if(parseFloat(prev) < parseFloat(after)){
                                    console.log(prev,after);
                                    let temp = array[j+1];
                                    array[j+1]=array[j];
                                    array[j]=temp;
                                }
                            }
                        }
                    }
                    else if(index==2){
                        for(let i=0;i<array.length;i++){
                            for (let j=0;j<array.length-i-1;j++){
                                prev = parseFloat(array[j].find('.kiloprice').children('strong').html()).toFixed(2);
                                console.log(array[j].find('.kiloprice'));
                                //console.log(prev,"--------",after)
                                after = parseFloat(array[j+1].find('.kiloprice').children('strong').html()).toFixed(2);
                                if(parseFloat(prev) > parseFloat(after)){
                                    let temp = array[j+1];
                                    array[j+1]=array[j];
                                    array[j]=temp;
                                }
                            }
                        }
                    }
                    else if(index==3){
                        for(let i=0;i<array.length;i++){
                            for (let j=0;j<array.length-i-1;j++){
                            prev = array[j].find(".prix").children('strong').html();
                            after = array[j+1].find('.prix').children('strong').html();
                             console.log(array[j].find(".prix"));
                            //console.log(prev,"--------",after)
                                if(parseFloat(prev) < parseFloat(after)){
                                    console.log(prev,after);
                                    let temp = array[j+1];
                                    array[j+1]=array[j];
                                    array[j]=temp;
                                }
                            }
                        }
                    }
                    else if(index==4){
                        for(let i=0;i<array.length;i++){
                            for (let j=0;j<array.length-i-1;j++){
                                prev = parseFloat(array[j].find('.prix').children('strong').html()).toFixed(2);
                                console.log(array[j].find('.prix'));
                                //console.log(prev,"--------",after)
                                after = parseFloat(array[j+1].find('.prix').children('strong').html()).toFixed(2);
                                if(parseFloat(prev) > parseFloat(after)){
                                    let temp = array[j+1];
                                    array[j+1]=array[j];
                                    array[j]=temp;
                                }
                            }
                        }
                    }
                    
                    $('.lstPro').empty();
                    for(let i=0;i<array.length;i++){
                        $('.lstPro').append(array[i])
                    }
                
                
            })
            function SortByPriceLower(){
              $('.prix').each(function() {
                  //console.log(this);
                  var price=this.firstChild.firstChild.nodeValue
                  //console.log(price.substr(0,price.length-2));
                  //console.log( $( this ).parent().parent().parent().parent()  );
                  
              });
            }
        })
        


