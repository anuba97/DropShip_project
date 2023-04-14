
//function fetchSortedData(pageNumber) {
//    location.href = "painting_list?sortType=" + $("#sort-options").val() + "&page=" + pageNumber;
//}
//
//
//function fetchViewData() {
//    var viewOption = $("#view-options").val();
//    // Implement your logic to handle different view options
//    // For example:
//    // location.href = "painting_list?viewOption=" + viewOption;
//}


function fetchData(pageNumber) {
    var sortType = $("#sort-options").val();
    var viewOption = $("#view-options").val();
    location.href = "painting_list?sortType=" + sortType + "&viewOption=" + viewOption + "&page=" + pageNumber;
}






//function fetchSortedData(event) {		// ajax로 painting_list 정렬하는 방식.
//    var sortType = $('#sort-options').val();
//    $.ajax({
//        url: 'painting_list/sorted',
//        data: {
//            page: 1,
//            sortType: sortType
//        },
//        dataType: 'json',
//        success: function (data) {
//            updatePageContent(data);
//        },
//        error: function (error) {
//            console.log('Error:', error);
//        }
//    });
//
//    // Stop event propagation to prevent the $(document).click event from firing
//    event.stopPropagation();
//}
//
//
//function updatePageContent(data) {	// ajax쓸때 방식. 페이지 넘어갈때 문제있어서 안씀. 
//	
//    var content = '';
//
//    // Loop through the data and create the HTML content
//    for (var i = 0; i < data.length; i++) {
//        var work = data[i];
//
//        content += '<li class="sct_li">';
//        content += '<div class="li_wr">';
//        content += '<div class="sct_img_wrap">';
//        content += '<div class="sct_img" style="background-image:url(/admin/img/work/' + work.work_img_url + ')">';
//        content += '<span class="hide">작품이름</span>';
//        content += '</div>';
//        content += '<div class="sct_opt_wrap">';
//        content += '<div class="sct_btn list-10-btn">';
//        content += '<button type="button" onclick="AddToCartBtn(' + work.id + ',' + work.artist_id + ')" class="btnset btn-type01 btn_cart sct_cart">';
//        content += '<svg height="45" width="160">';
//        content += '<rect height="45" width="160"></rect>';
//        content += '</svg>';
//        content += '<span>상세페이지 이동</span>';
//        content += '</button>';
//        content += '</div>';
//        content += '<div class="cart-layer"></div>';
//        content += '<div class="sct_op_btn">';
//        content += '<a href="painting_item?work_id=' + work.id + '&artist_id=' + work.artist_id + '" class="btnset btn-sight"><span class="hide">자세히보기</span></a>';
//
//        if (data.sessionMember_login_id == null) {
//            content += '<button type="button" onclick="NoheartBtn()" data-it_id="1654135291" class="btnset btn-like btn_wish"><span class="hide">찜하기</span></button>';
//        } else {
//            content += '<button type="button" onclick="heartBtn(\'' + data.sessionMember_id + '\',' + work.id + ')" data-it_id="1654135291" class="btnset btn-like btn_wish"><span class="hide ">찜하기</span></button>';
//        }
//
//        content += '</div>';
//        content += '</div>';
//        content += '</div>';
//        content += '<div class="sct_txt">';
//        content += '<a href="painting_item?work_id=' + work.id + '&artist_id=' + work.artist_id + '" class="sct_a">';
//        content += work.work_name;
//        content += '</a>';
//
//        if (work.work_is_ai == 1) {
//            content += '<div class="member_work">회원 작품</div>';
//        }
//
//        content += '</div>';
//        content += '<div class="sct_desc"><span>' + work.artist_name + '</span>';
//        content += '<p>20.0cm x 35.7cm</p>';
//        content += '</div>';
//        content += '<div class="sct_cost">';
//        content += '<span class="price_cost">';
//        content += '<strong>';
//        content += new Intl.NumberFormat().format(work.work_price) + '원';
//        content += '<!-- comparison checkbox -->';
//        content += '<input type="checkbox" id="compare' + work.id + '" class="compare" name="compare" value="' + work.id + '" style="transform: scale(1.3);">';
//        content += '<label for="compare' + work.id + '" class="sct_desc" style="color: #c9ab81; font-size: 16px; cursor: pointer;">비교선택</label>';
//		content += '<!-- comparison checkbox -->';
//		content += '<div id="compareWorkId"></div>';
//		content += '</strong>';
//		content += '</span>';
//		content += '</div>';
//		content += '</div>';
//		content += '</li>';
//	}
//	$('.sct.sct_20').html(content);
//}


