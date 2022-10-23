<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
  
</head>
<style>
div.card{
	margin-left:30px
}
p.card-title{
	color:blue;
	font-size:12px;
}

.button{
	background-color:#cff0cc;
	border-radius: 10px;
    border:0;
    outline:0;
    font-size:5px; 
    padding:3px 10px;
}

.button:hover {

  background: green; 
  color: white;
  border:0;
  outline:0;
}



  .layer_body{
     -webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    color: #000;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    margin: 0;
    padding: 0;
    overflow-x: hidden;
    overflow-y: auto;
    position: static;
    left: auto;
    right: auto;
    top: auto;
    bottom: auto;
    max-height: 630px;
    box-sizing: border-box;
 } 
  .wrap_msgprofile{
  	-webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    color: #000;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    margin: 0;
    padding: 0;
    position: relative;
  }
  
  .box_profile{
  	-webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    color: #000;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    margin: 0;
    padding: 0;
    text-align: center;
    padding-top: 0;
  }
  .thumb_profile{
    -webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    color: #000;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    text-align: center;
    margin: 0;
    display: inline-block;
    position: relative;
    width: 36px;
    height: 36px;
    padding: 2px;
    vertical-align: top;
  }
  .thumb_profile .img_g{
    -webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    color: #000;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    text-align: center;
    aspect-ratio: auto 36 / 36;
    height: 36px;
    border: 0 none;
    vertical-align: top;
    display: block;
    width: 100%;
  }
  .thumb_profile .frame_squircle{
  	-webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    color: #000;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    text-align: center;
    aspect-ratio: auto 42 / 42;
    border: 0 none;
    vertical-align: top;
    position: absolute;
    left: -1px;
    top: -1px;
    width: 42px;
    height: 42px;
  }
  .tit_g{
    -webkit-text-size-adjust: none;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    display: block;
    padding: 12px 0 24px;
    font-size: 20px;
    line-height: 24px;
    color: #111;
    text-align: center;
    padding-bottom: 16px;
  }
  .txt_name{
  	-webkit-text-size-adjust: none;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    font-size: 20px;
    line-height: 24px;
    color: #111;
    text-align: center;
    display: inline-block;
    overflow: hidden;
    max-width: 124px;
    text-overflow: ellipsis;
    white-space: nowrap;
    vertical-align: top;
  }
  .wrap_msgcard{
    -webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    color: #000;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    margin: 0 auto;
    width: 285px;
    padding: 8px 0 40px;
  }
  .custom_mask_frame{
    -webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    color: #000;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    margin: 0;
    padding: 0;
    overflow: hidden;
    border-radius: 12px;
    background-color: #fff;
    box-shadow: 0 39px 20px -30px rgba(0,0,0,.2);
    -webkit-backface-visibility: hidden;
    -webkit-transform: translate3d(0,0,0);
  }
  .custom_background_image{
  	 -webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    color: #000;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    margin: 0;
    padding: 0;
    overflow: hidden;
    position: relative;
    padding-bottom: 66.66%;
    background-image: url(https://t1.kakaocdn.net/gift/message-card/loading.png);
    background-repeat: no-repeat;
    background-size: cover;
  }
  .link_media{
   -webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    overflow-anchor: none;
    color: #000;
    text-decoration: none;
  }
  .link_media img{
  	-webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    color: #000;
    border: 0 none;
    vertical-align: top;
    display: block;
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
    top: 0;
  }
  .txt_letter{
  	-webkit-text-size-adjust: none;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    margin: 0;
    padding: 20px 20px 16px;
    font-size: 15px;
    line-height: 22px;
    color: #111;
    letter-spacing: -.033em;
    word-break: break-all;
  }
  .link_prd{
  	-webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    overflow-anchor: none;
    color: #000;
    text-decoration: none;
    display: block;
    position: relative;
    padding: 16px 20px;
  }
  .info_prd{
    -webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    color: #000;
    display: block;
    overflow: hidden;
  }
  .thumb_prd{
    -webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    color: #000;
    overflow: hidden;
    float: left;
    position: relative;
    width: 40px;
    height: 40px;
    border-radius: 2px;
  }
  .thumb_prd .img_g{
    -webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    color: #000;
    border: 0 none;
    vertical-align: top;
    display: block;
    width: 100%;
  }
  .txt_prd{
    -webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    color: #000;
    display: block;
    overflow: hidden;
    padding: 2px 0 0 8px;
  }
  .screen_out{
  	-webkit-text-size-adjust: none;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    color: #000;
    font-size: 10px;
    overflow: hidden;
    position: absolute;
    width: 0;
    height: 0;
    line-height: 0;
    text-indent: -9999px;
  }
  .txt_brand{
  	-webkit-text-size-adjust: none;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    font-style: normal;
    font-weight: 400;
    display: block;
    overflow: hidden;
    line-height: 16px;
    text-overflow: ellipsis;
    white-space: nowrap;
    word-break: break-all;
    font-size: 13px;
    color: rgba(34,34,34,.6);
  }
  #productName{
    -webkit-text-size-adjust: none;
    font-size: 14px;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    display: block;
    overflow: hidden;
    line-height: 16px;
    text-overflow: ellipsis;
    white-space: nowrap;
    word-break: break-all;
    padding-top: 4px;
    font-weight: 400;
    color: #222;
  }
  .item_btn{
    -webkit-text-size-adjust: none;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    overflow-anchor: none;
    margin: 0;
    padding: 0;
    vertical-align: middle;
    border: 0 none;
    cursor: pointer;
    line-height: 1.5;
    color: #000;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    display: block;
    width: 100%;
    height: 50px;
    font-size: 0;
    background-color: #fafafa;
  }
  .btn_crad{
    -webkit-text-size-adjust: none;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    overflow-anchor: none;
    margin: 0;
    padding: 0;
    vertical-align: middle;
    border: 0 none;
    cursor: pointer;
    line-height: 1.5;
    color: #000;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    display: block;
    width: 100%;
    height: 50px;
    font-size: 0;
    background-color: #fafafa;
  }

 .txt_g{
     -webkit-text-size-adjust: none;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    cursor: pointer;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    display: inline-block;
    font-size: 14px;
    line-height: 16px;
    color: rgba(17,17,17,.5);
    vertical-align: top;
  }
  .btn_close{
    -webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    overflow-anchor: none;
    color: #000;
    text-decoration: none;
    right: 0;
    top: 0;
    z-index: 10;
    position: absolute;
    }
  .ico_close{
      -webkit-text-size-adjust: none;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    display: block;
    overflow: hidden;
    font-size: 1px;
    line-height: 0;
    background: url(https://gift-s.kakaocdn.net/dn/gift/images/m640/ico_gift2_220628.png) no-repeat;
    background-size: 250px 1200px;
    color: transparent;
    width: 16px;
    height: 16px;
    margin: 20px;
    background-position: -95px -760px;
  }
  
  div.aaa{
  	border: none;
  }
  th{
  	width: 60px;
  	vertical-align: middle;
  }
  .gift_window{
  	-webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    color: #000;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    z-index: 50001;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    overflow-y: auto;
    overscroll-behavior-y: contain;
    position: fixed;
    inset: 0px;
    background: rgba(0, 0, 0, 0.4);
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
  }
  
  .gift_card{
    -webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    color: #000;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
  }
  .msgcardd_layer{
    -webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    color: #000;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    margin: 0;
    z-index: 30020;
    background-color: #fffae2;
    overflow: hidden;
    position: relative;
    left: auto;
    right: auto;
    top: auto;
    bottom: auto;
    width: 500px;
    padding: 86px 0 88px;
    border-radius: 8px;
    padding-top: 42px;
  }
  .inner_layer{
  	-webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    color: #000;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    margin: 0;
    padding: 0;
  }
  .layer_body{
    -webkit-text-size-adjust: none;
    font-size: 14px;
    line-height: 1.5;
    color: #000;
    font-family: -apple-system,Apple SD Gothic Neo,\b9d1\c740  \ace0\b515,Malgun Gothic,sans-serif,ArialUnicodeMs;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    margin: 0;
    padding: 0;
    overflow-x: hidden;
    overflow-y: auto;
    position: static;
    left: auto;
    right: auto;
    top: auto;
    bottom: auto;
    max-height: 630px;
    box-sizing: border-box;
  }

</style>
</head>
<script type="text/javascript">
	$(function() {
		
		/* $("#testmodal").click(function () {
			console.log(11);
			$(".modal").modal("show");
		}) */
		$('#testmodal').on('click', function(){
			$('.modal').modal('show');	
			console.log("click open");  
		});
		
	 	$(".btn_crad").click(function(){
	 		  $(".address").toggle();
	 	});
	});

</script>
<body>
<div class="container mt-3" style="display: flex;
  flex-direction: row; height:900px; justify-content: center;
  flex-wrap:wrap;">

 <div class="card" style="width:300px; height:200px;">
    <img class="card-img-top" src="https://img1.kakaocdn.net/thumb/C600x600.fwebp.q82/?fname=https%3A%2F%2Fst.kakaocdn.net%2Fproduct%2Fgift%2Fproduct%2F20211116142439_3f7c46a144de45888ecea88a5d07111b.png" alt="Card image" style="width:100%">
    <div class="card-body">
      <p class="card-title">����ġŲ</p>
      <h5 class="card-text">���� ��� ġŲ</h5>
      <h6 class="card-text" style="float:left;"><b>from.��μ�</b></h6> 
      <button class="button" style="margin-left:10px" id="testmodal">�޽��� ī�� ����</button>
      <p style="color:gray; text-align: left; margin-top:10px">2022.09.28 ���� 09:16</p>
    </div>
 </div>

</div>
<!-- �˾����� -->
	<div class="modal" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="gift_window">
					<div class="gift_card">
						<div class="msgcardd_layer no_title">
							<div class="inner_layer">
								<div class="layer_body">
									<!--content //-->
									<div class="wrap_msgprofile">
										<div class="box_profile">
											<div class="thumb_profile">
												<img width="36" height="36" class="img_g"src="/jogong/resources/image/21.jpeg">
												<img width="42" height="42" class="frame_squircle" src="/jogong/resources/image/frame_msgsquircle.png">
											</div>
										</div>
										<!--  -->
										<strong class="tit_g"> <span id="nickname" class="txt_name">���� ��� �̸�</span>"���� ���� �޽���" </strong>
									</div>
									<!--  -->
									<div class="wrap_msgcard">
										<div class="card_g custom_mask_frame">
											<div class="thumb_media custom_background_image">
												<a href="#none" class="link_media"><img alt="�޽���ī��" class="img_g" src="/jogong/resources/giftimage/banner/1.jpg"></a>
											</div>
											<!--  -->
											<p class="txt_letter">���⿡ ģ���� ���� �޽��� ������</p>
											<!--  -->
											<a href="#none" class="link_prd"> 
											<span class="info_prd">
												<span class="thumb_prd"> <img class="img_g" src="/jogong/resources/image/21.jpeg" alt="���⿡ ��ǰ�̹���"></span> 
												<span id="productWrapper" class="txt_prd"> 
												<span class="screen_out">�귣���</span> 
												<em id="brandName" class="txt_brand">ex)������</em> <span class="screen_out">��ǰ��</span>
												<strong id="productName" class="txt_name">ex)������ ȫ�� ��Ʈ</strong>
												</span>
											</span>
											</a>
											<!--  -->
											<div class="tbl_btn">
												<div class="item_btn">
													<button type="button" class="btn_crad">
														<span class="ico_gift2 ico_delete"></span> 
														<span class="txt_g">�ּ� �Է�</span>
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<a href="#none" class="btn_close"> 
									<span class="ico_gift2 ico_close">�ݱ�</span>
								</a>
							</div>
							<!-- ����� �Է� �� -->
	                	<form action="">
							<table style="width: 70%; display: none; margin: 10px auto;" class="table table-bordered address"  >
								<tr>
								<th style="text-align: center"> �̸� </th>
									<td>
										<input type="text" style="width: 100%;" required name="companyName" id="to_name" value="${to_member_id }">
									</td>
								</tr>
								<tr>
								<th style="text-align: center"> ����ó </th>
									<td>
										<input type="text" style="width: 100%;" required id="to_hp" value="">
									</td>
								</tr>
								<tr>
									<th style="text-align: center"> �ּ� </th>
									<td>
										<div style="width: 100%; border: none;" class="input-group"> 
										<input type="text" id="sample4_postcode" placeholder="�����ȣ" style="width: 60%; border:1px solid black; margin-bottom: 5px;" required value="" >
										<input type="button" onclick="sample4_execDaumPostcode()" class="btn btn-dark btn-sm" value="�����ȣ" style=" margin-bottom: 5px; float: right;" ><br>
										</div>
										<input type="text" id="sample4_roadAddress" placeholder="���θ��ּ�" size="60" value=""
										style="width: 100%; margin-bottom: 5px;" required name="address1"><br>
										
										<input type="hidden" id="sample4_jibunAddress" placeholder="�����ּ�"  size="60">
										<span id="guide" style="color:#999; display:none"></span>
										<input type="text" id="sample4_detailAddress" placeholder="���ּ�"  size="60" value=""
										style="width: 100%;"required name="address2"><br>
										
										<input type="hidden" id="sample4_extraAddress" placeholder="�����׸�"  size="60">
										<input type="hidden" id="sample4_engAddress" placeholder="�����ּ�"  size="60" >
									</td>
								</tr>
								<tr style="border-bottom: none;">
									<td colspan="2" style="text-align: center; border: none; " >
										<button type="submit" class="btn btn-success">����</button>
									</td>
								</tr>
							</table>
						</form>	
						<!-- ����� �Է� ��  ��-->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<script type="text/javascript">
//���� �ּҰ˻� API
//�� ���������� ���θ� �ּ� ǥ�� ��Ŀ� ���� ���ɿ� ����, �������� �����͸� �����Ͽ� �ùٸ� �ּҸ� �����ϴ� ����� �����մϴ�.
function sample4_execDaumPostcode() {
new daum.Postcode({
    oncomplete: function(data) {
        // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

        // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� ǥ���Ѵ�.
        // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
        var roadAddr = data.roadAddress; // ���θ� �ּ� ����
        var extraRoadAddr = ''; // ���� �׸� ����

        // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
        // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
        if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
            extraRoadAddr += data.bname;
        }
        // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
        if(data.buildingName !== '' && data.apartment === 'Y'){
           extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
        }
        // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
        if(extraRoadAddr !== ''){
            extraRoadAddr = ' (' + extraRoadAddr + ')';
        }

        // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
        document.getElementById('sample4_postcode').value = data.zonecode;
        document.getElementById("sample4_roadAddress").value = roadAddr;
        document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
 
        document.getElementById("sample4_engAddress").value = data.addressEnglish;
               
        // �����׸� ���ڿ��� ���� ��� �ش� �ʵ忡 �ִ´�.
        if(roadAddr !== ''){
            document.getElementById("sample4_extraAddress").value = extraRoadAddr;
        } else {
            document.getElementById("sample4_extraAddress").value = '';
        }

        var guideTextBox = document.getElementById("guide");
        // ����ڰ� '���� ����'�� Ŭ���� ���, ���� �ּҶ�� ǥ�ø� ���ش�.
        if(data.autoRoadAddress) {
            var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
            guideTextBox.innerHTML = '(���� ���θ� �ּ� : ' + expRoadAddr + ')';
            guideTextBox.style.display = 'block';

        } else if(data.autoJibunAddress) {
            var expJibunAddr = data.autoJibunAddress;
            guideTextBox.innerHTML = '(���� ���� �ּ� : ' + expJibunAddr + ')';
            guideTextBox.style.display = 'block';
        } else {
            guideTextBox.innerHTML = '';
            guideTextBox.style.display = 'none';
        }
    }
}).open();
}
</script>

</body>
</html>