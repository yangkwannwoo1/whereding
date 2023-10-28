// 모두선택
$(document).on("click",".cart__list .all_Check",function(){
    console.log("Zz")

    if($(this).prop("checked")){
        console.log("ss")
        $(".all_Check").prop("checked",true);
        $(".cart__list .check__it").prop("checked",true).trigger("change");
    }else{
        console.log("Zz")
        $(".all_Check").prop("checked",false);
        $(".cart__list .check__it").prop("checked",false).trigger("change");
    }
})

// check 박스 클릭시
$(document).on("change",".cart__list .check__it",function(){  
    var checked = $(this).prop('checked');

    console.log($(this).closest("tr").find(".total").text())
    let price = $(this).closest("tr").find(".total").text().replace(/,/g, '');
    console.log(price)
    if(checked){
        $(this).closest("tr").css("backgroundColor", "lightgray");
    }else{
        $(this).closest("tr").css("backgroundColor", "");
    }
    let a1 = $(":checked").closest("tr").find(".total"); 
    let total = 0;
    for (var i = 0; i <a1.length; i++) {
        total += Number(a1[i].innerHTML.replace(/,/g, ''))
    }
    totalPrice = total
    $(".cart__list .total_price").text("총금액 : " + total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + "원")
})

let totalPrice = 0;
// + 버튼 클릭시
$(document).on("change",".cart__list .count_btn",function(){  
    let price = $(this).closest("tr").find(".price").text().replace(/,/g, '');
    console.log(price)
    let count = $(this).closest("tr").find(".count_btn").val();
    console.log(count)
    $(this).closest("tr").find(".total").text((price * count).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','))
    $(this).parents("tr").find(".check__it").trigger("change");
})

$(document).on("change",".cart__list .check__it",function(){

    // console.log($(".side_schedule .basket_item:checked").length)
    // console.log($(".side_schedule .basket_item").length)
    let checkNum = $(".cart__list .check__it:checked").length;
    console.log(checkNum)
    if(checkNum ==$(".check__it").length){
        $(".cart__list .all_Check").prop("checked",true)
    }else{
        $(".cart__list .all_Check").prop("checked",false)
    }

    $(".cart__list .reservation_Total").text(checkNum +"개 선택");
})