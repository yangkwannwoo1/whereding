$(function(){
    // 사이드 바
    // $('.basket').on('click', function(){
    //     console.log("나오니")
    //     $.ajax({
    //         url:"selectBasket.sb",
    //         data:{
    //             userNo:'${loginMember.userNo}'
    //         },success:function(){
    //             console.log("성공");
    //         },error:function(){
    //             console.log("장바구니 불러오기 ajax 요청 실패!");
    //         }
    //     })
    //     // $('.menu_bg').show(); 
    //     $('.side_basket').show().animate({
    //         right:0
    //     });  
    //     $(".pCount input").trigger("change");
    //     // $("html").css("overflow", "hidden")
    // });

    // $('.basket').on('click', function(){
    //     // $('.menu_bg').show(); 
    //     $('.side_basket').show().animate({
    //         right:0
    //     });  
    //     $(".pCount input").trigger("change");
    //     // $("html").css("overflow", "hidden")
    // });
    
    // 예약 사이드 바
    // $('.schedule').on('click', function(){
    //     // $('.menu_bg').show(); 
    //     $('.side_schedule').show().animate({
    //         right:0
    //     });  
    //     $(".pCount input").trigger("change");
    // });
    
    // 사이드바 닫기 
    $(document).on("click",".close_btn>a",function(){
        $('.sidebar_menu').animate({
            right: '-' + 25 + '%'
        },function(){
            $('.sidebar_menu').hide();
        }); 

    })
    // $('.close_btn>a').on('click', function(){
    //     // $('.menu_bg').hide(); 
    //     // $("#sticker-sticky-wrapper").attr("class", "sticky-wrapper");
    //     $('.sidebar_menu').animate({
    //         right: '-' + 25 + '%'
    //     },function(){
    //         $('.sidebar_menu').hide();
    //     }); 
    // });

    // 페이지 상단으로 이동
    $(".up_arrow").click(function(){
        window.scrollTo({top:0, behavior:"smooth"})
    })
    
    // 사이드바 input 숫자 체크
    $(document).on("keydown",".pCount input",function(e){  
        if(e.keyCode === 46 || e.keyCode === 8 || e.key >= 0 && e.key <= 9){
            return true;
        }
        return false;
     })

    // $(".pCount input").keydown(function(e){
    //     if(e.keyCode === 46 || e.keyCode === 8 || e.key >= 0 && e.key <= 9){
    //         return true;
    //     }
    //     return false;
    // })

    // 사이드바 수량 제한
    $(document).on("change",".pCount input",function(){  
        if($(this).val() > 999){
            $(this).val(999)
            alert("최대수량은 999개 입니다.")
        }else if($(this).val() < 1){
            $(this).val(1)
            alert("최소수량은 1개 입니다.")
        }
        let price = $(this).closest("tbody").children("tr").find(".per_price").text();
        let count = $(this).closest(".pCount").children("input").val();
        $(this).closest("tbody").find(".total").text((price * count).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','))

     })
        
    //     // 총금액 계산
    //     // console.log($(this).closest("tbody").children("tr").find("span").text())
    //     // console.log($(this).closest(".pCount").children("input").val())
    //     let price = $(this).closest("tbody").children("tr").find(".per_price").text();
    //     let count = $(this).closest(".pCount").children("input").val();
    //     // console.log(price)
    //     // console.log(count)
    //     $(this).closest("tbody").find(".total").text((price * count).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','))
    // })
    
    let totalPrice = 0;
    // + 버튼 클릭시
    $(document).on("click",".fa-plus",function(){  
        let val = $(this).next().val()
        val++;
        $(this).next().val(val).trigger("change");
        $(this).parents("table").find(".basket_item").trigger("change");
    })
    
    // - 버튼 클릭시
    $(document).on("click",".fa-minus",function(){  
        let val = $(this).prev().val()
        val--;
        $(this).prev().val(val).trigger("change");
        $(this).parents("table").find(".basket_item").trigger("change");
    })

    // check 박스 클릭시
    $(document).on("change",".basket_item",function(){  

        var checked = $(this).prop('checked');
        let price = $(this).closest("table").find(".total").text().replace(/,/g, '');
        if(checked){
            $(this).closest("table").find("*").css("backgroundColor", "lightgray");
        }else{
            $(this).closest("table").find("*").css("backgroundColor", "whitesmoke");
        }
        let a1 = $(":checked").closest("table").find(".total"); 
        let total = 0;
        for (var i = 0; i <a1.length; i++) {
            total += Number(a1[i].innerHTML.replace(/,/g, ''))
            // console.log(total)
        }
        totalPrice = total
        $(".finalTotal").text("총금액 : " + total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + "원")
    })
    // 예약 사이드바 모두 선택
    $(document).on("click",".side_schedule .allCheck input",function(){
        // console.log($(".allCheck input").prop("checked"));
        if($(".side_schedule .allCheck input").prop("checked")){
            $(".side_schedule .basket_item").prop("checked",true).trigger("change");
        }else{
            $(".side_schedule .basket_item").prop("checked",false).trigger("change");
        }

    })
    $(document).on("click",".side_schedule",function(){

        // console.log($(".side_schedule .basket_item:checked").length)
        // console.log($(".side_schedule .basket_item").length)
        let checkNum =$(".side_schedule .basket_item:checked").length;
        if($(".side_schedule .basket_item:checked").length==$(".side_schedule .basket_item").length){
            $(".side_schedule .allCheck input").prop("checked",true)
        }else{
            $(".side_schedule .allCheck input").prop("checked",false)
        }
    
        $(".reservation_Total").text(checkNum+"개 선택");
    })        

})


