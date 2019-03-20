@extends('home.layouts.main')
@section('title', '客户会员')
@section('content')
    <!-- 广告图片 -->
    <div>
        <img class="customer-img" src="/home/picture/customerPicture.png"/>
    </div>
    <!-- 左内容-->
    <div class="customer-left">
        <!-- 至尊VIP会员-->
        <div id="vip_content">
            <div class="customer-left-title">会员专享</div>
            <div>* 一年内爱车从内到外靓丽如新;</div>
            <div>* 到店后的尊贵享受;</div>
            <div>* 单独的洗车价格优惠;</div>
            <div>* 店内其他服务项目及精品的会员价优惠;</div>
            <div>* 会员专用休息区;</div>
            <div>* 会员专用茶点;</div>
            <div>* 专人客户服务经理提醒，让爱车更省心;</div>
            <div>* 无需预约，到店后具有排队优先权;</div>
            <div>* 专用工具，全新纯棉毛巾及擦车用品，专车使用;</div>
        </div>
        <!-- 加入会员-->
        <div id="join_content" style="display:none">
            <div class="customer-left-title">入会须知</div>
            <div> * 凡年满十六岁以上的中外人事并且拥有一台轿车者均可参加</div>
            <div> * 认同我们的服务理念和服务模式</div>
            <div> * 满足以上两条即可申请会员服务</div>
            <div> * 交纳相应的会员费用</div>
        </div>
    </div>
    <!-- 右导航-->
    <div class="customer-right">
        <div>
            <div class="customer-title">会员介绍</div>
            <div class="customer-profile" id="vip">至尊VIP会员</div>
            <div class="customer-profile" id="join">入会须知</div>
            <div class="customer-onclick" id="">加入会员</div>
        </div>
        <div>
            <div class="customer-title">会员登录</div>
            <div>
                <div class="customer-onclick" id='click_login'>点击登录</div>
                <div class="customer-onclick">账户余额:</div>
                <div class="customer-onclick">点击充值</div>
                <div class="customer-onclick" id='click_login' onclick='return validate()'>注销登录</div>
            </div>
        </div>
    </div>
@endsection
@section('script')
    <script type="text/javascript">
        $(function () {

            $("#vip").click(function () {

                $("#vip_content").show();
                $("#join_content").hide();
            });

            $("#join").click(function () {
                $("#vip_content").hide();
                $("#join_content").show();
            });
        });
        function validate() {
            if (confirm("是否注销退出?")) {
                return true;
            } else {
                return false;
            }
        }
    </script>
@endsection