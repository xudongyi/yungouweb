<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.eypg.util.ApplicationListenerImpl"%>
<%@page import="com.eypg.util.Struts2Utils"%>
<%@page import="net.sf.json.JSONArray"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta name="decorator" content="index_template" />
		<title><%=ApplicationListenerImpl.sysConfigureJson.getSaitTitle() %></title>
		<link rel="stylesheet" type="text/css" href="<%=ApplicationListenerImpl.sysConfigureJson.getSkinUrl()%>/css/index.css" />
	</head>

	<body class="home" id="loadingPicBlock" rf="1">

        <!--banner-->
        <div class="g-content">
            <div class="w1190">
                <div class="home-banner fl">
                    <div id="div_slide" class="slide-scroll">
                        <div id="div_guide" class="m-guide-con" style="display: none;">
                            <div class="m-guideBg"></div>
                            <div class="m-guide">
                                <ul id="ul_guide">
                                    <li class="f-step1"><a href="javascript:;" title="30秒了解"></a>
                                        <img src="/Images/step_01.gif" /></li>
                                    <li class="f-step2"><a href="javascript:;" title="下一步"></a>
                                        <img src="/Images/step_02.gif" /></li>
                                    <li class="f-step3"><a href="javascript:;" title="下一步"></a>
                                        <img src="/Images/step_03.gif" /></li>
                                    <li class="f-step4"><a href="javascript:;" title="下一步"></a>
                                        <img src="/Images/step_04.gif" /></li>
                                    <li class="f-step5"><a href="javascript:;" title="下一步"></a>
                                        <img src="/Images/step_05.gif" /></li>
                                    <li class="f-step6"><a href="/help/index.html" target="_blank" title="继续了解详情"></a>
                                        <img src="/Images/step_06.gif" /></li>
                                </ul>
                                <a id="guide_close" href="javascript:;" class="m-guide-close" title="关闭"></a>
                            </div>
                            <div class="u-guide-arrow">
                                <a id="guide_pre" href="javascript:;" class="u-guide-prev"><s></s></a>
                                <a id="guide_next" href="javascript:;" class="u-guide-next"><s></s></a>
                            </div>
                        </div>
                        <div class="m-slides">
	                        <div class="rslides" id="slideImg">
	                       </div>
	                        <div style="display: none;" id="posterBanner">
	                        </div>
	                    </div>
                    </div>

                    <!--广告位下方推荐-->
                    <div class="slide-comd">
                    <c:if test="${newProductList!='[]'}">
                        <s:iterator var="newProducts" value="newProductList">
                        	<div class="commodity">
                                  <ul>
                                      <li class="comm-info fl">
                                          <span><a href="<%=ApplicationListenerImpl.sysConfigureJson.getWwwUrl()%>/products/${newProducts.spellbuyProductId }.html" target="_blank" title="${newProducts.productTitle }">(第${newProducts.productPeriod}期)${newProducts.productName }</a></span>
                                          <p class="gray">已参与<em class="orange">${newProducts.currentBuyCount }</em>人次</p>
                                      </li>
                                      <li class="comm-pic fr"><a href="<%=ApplicationListenerImpl.sysConfigureJson.getWwwUrl()%>/products/${newProducts.spellbuyProductId }.html" target="_blank" title="${newProducts.productTitle }" rel="nofollow">
                                          <cite>
                                              <img alt="${newProducts.productTitle }" src="<%=ApplicationListenerImpl.sysConfigureJson.getImgUrl()%>${newProducts.headImage }" border="0"  width="100" height="100" /></cite>
                                          <span class="F_goods_xp"><i>新品</i></span>
                                      </a>
                                      </li>
                                      
                                  </ul>
                              </div>
                        </s:iterator>
                    </c:if>
                    </div>
                </div>
                <div class="home-event fr">
                    <div class="what-1yyg">
                        <a id="what_1yyg" href="javascript:void(0);" title="什么是<%=ApplicationListenerImpl.sysConfigureJson.getSaitName()%>？30秒了解" >
                            <img src="/Images/index-come.gif" alt="" /></a>
                    </div>
                    <div class="honesty">
                        <ul>
                            <li><a href="<%=ApplicationListenerImpl.sysConfigureJson.getWwwUrl()%>/sincerity.html" target="_blank" title="诚信网站"><i class="i1"></i>诚信网站</a></li>
                            <li><a href="<%=ApplicationListenerImpl.sysConfigureJson.getWwwUrl()%>/sincerity.html#rz2" target="_blank" rel="nofollow" title="可信网站"><i class="i2"></i>可信网站</a></li>
                            <li><a href="<%=ApplicationListenerImpl.sysConfigureJson.getWwwUrl()%>/sincerity.html#rz3" target="_blank" rel="nofollow" title="电商诚信"><i class="i3"></i>电商诚信</a></li>
                            <li><a href="<%=ApplicationListenerImpl.sysConfigureJson.getWwwUrl()%>/sincerity.html#rz4" target="_blank" rel="nofollow" title="安信宝"><i class="i4"></i>安信宝</a></li>
                            <li><a href="<%=ApplicationListenerImpl.sysConfigureJson.getWwwUrl()%>/sincerity.html#rz5" target="_blank" rel="nofollow" title="监督管理局"><i class="i5"></i>监督管理局</a></li>
                            <li><a href="<%=ApplicationListenerImpl.sysConfigureJson.getWwwUrl()%>/sincerity.html" target="_blank" rel="nofollow" title="更多"><i class="i6"></i>更多</a></li>
                        </ul>
                    </div>
                    <div class="index_news">
                        <dl>
                            <dt>新闻公告</dt>
                            <s:iterator var="news" value="newsList" status="index">
                            	<dd><b></b><a href="<%=ApplicationListenerImpl.sysConfigureJson.getWwwUrl()%>/news/${news.newsId }.html" target="_blank" title="${news.title }">${news.title }</a></dd>
                            </s:iterator>
                        </dl>
                    </div>
                </div>
            </div>
        </div>

        <div class="g-wrap w1190">
            <!--最新揭晓-->
            <div class="g-title">
                <h3 class="fl"><i></i>最新揭晓<span>截至目前共揭晓商品<em><a id="em_lotcount" href="/lottery/index.html" target="_blank">${lotteryCount }</a></em>个</span></h3>
                <%-- <div class="m-other fr">
                    <cite>
                        <a href="/map.html" target="_blank" title="看看附近都有谁获得了商品？"><em></em>看看附近都有谁获得了商品？</a>
                    </cite>
                </div> --%>
            </div>
            <div class="g-list">
                <ul id="ul_Lottery">
                <c:if test="${latestlotteryList!='[]'}">
                    <s:iterator var="latestlotterys" value="latestlotteryList">
                    	<li >
                             <dl>
                                 <dt><a href="${wwwUrl}/lotteryDetail/${latestlotterys.spellbuyProductId }.html" target="_blank" title="${latestlotterys.productTitle }" rel="nofollow">
                                     <img alt="${latestlotterys.productTitle }" src="<%=ApplicationListenerImpl.sysConfigureJson.getImgUrl()%>${latestlotterys.productImg }" /></a></dt>
                                 <dd class="f-gx">
                                     <div class="f-gx-user">
                                         <span>恭喜</span>
                                         <span class="blue"><a href="/u/${latestlotterys.userId }.html" target="_blank" title="${latestlotterys.userName }" class="blue" >${latestlotterys.userName }</a></span>
                                         <span>获得</span>
                                     </div>
                                 </dd>
                                 <dd class="u-name"><a href="${wwwUrl}/lotteryDetail/${latestlotterys.spellbuyProductId }.html" target="_blank" title="(第${latestlotterys.productPeriod }期)${latestlotterys.productTitle }">(第${latestlotterys.productPeriod }期)${latestlotterys.productName }</a></dd>
                                 <dd class="gray">${latestlotterys.location }</dd>
                             </dl>
                             <cite></cite>
                         </li>
                    </s:iterator>
                </c:if>
                </ul>
            </div>

            <!--热门推荐-->
            <div class="g-title">
                <h3 class="fl"><i></i>热门推荐</h3>
                <div class="m-other fr">
                    <a href="/list/hot20.html" target="_blank" title="更多" class="u-more">更多</a>
                </div>
            </div>
            <div class="g-hot clrfix">
                <div class="g-hotL fl" id="divHotGoodsList">
                    <div class="g-hotL-list">
                        <div class="g-hotL-con">
                            <div class="u-loading"><em></em></div>
                        </div>
                    </div>
                    <div class="g-hotL-list">
                        <div class="g-hotL-con">
                            <div class="u-loading"><em></em></div>
                        </div>
                    </div>
                    <div class="g-hotL-list">
                        <div class="g-hotL-con">
                            <div class="u-loading"><em></em></div>
                        </div>
                    </div>
                    <div class="g-hotL-list">
                        <div class="g-hotL-con">
                            <div class="u-loading"><em></em></div>
                        </div>
                    </div>
                    <div class="g-hotL-list">
                        <div class="g-hotL-con">
                            <div class="u-loading"><em></em></div>
                        </div>
                    </div>
                    <div class="g-hotL-list">
                        <div class="g-hotL-con">
                            <div class="u-loading"><em></em></div>
                        </div>
                    </div>
                    <div class="g-hotL-list">
                        <div class="g-hotL-con">
                            <div class="u-loading"><em></em></div>
                        </div>
                    </div>
                    <div class="g-hotL-list">
                        <div class="g-hotL-con">
                            <div class="u-loading"><em></em></div>
                        </div>
                    </div>
                </div>
                <div class="g-hotR fr">
                    <div class="u-are">正在<%=ApplicationListenerImpl.sysConfigureJson.getShortName()%></div>
                    <div class="g-zzyging">
                        <ul id="UserBuyNewList">
                        </ul>
                    </div>
                    <div class="u-see100"><a href="<%=ApplicationListenerImpl.sysConfigureJson.getWwwUrl()%>/getNewRecord.html" target="_blank">查看最新100条记录</a></div>
                </div>
            </div>

            <!--即将揭晓-->
            <div class="g-title m-sort">
                <h3 class="fl"><i></i>即将揭晓</h3>
                <div class="fr">
                	<s:iterator var="protype" value="protypeList">
                    <a href="/list/hot20/${protype.typeId}.html" target="_blank" title="${protype.typeName}">${protype.typeName}</a>
                    </s:iterator>
                    <a href="/list/hot20.html" target="_blank" title="全部">全部</a>
                </div>
            </div>
            <div class="announced-soon clrfix" id="divSoonGoodsList">
                <div class="soon-list-con">
                    <div class="soon-list">
                        <div class="u-loading"><em></em></div>
                    </div>
                </div>
                <div class="soon-list-con">
                    <div class="soon-list">
                        <div class="u-loading"><em></em></div>
                    </div>
                </div>
                <div class="soon-list-con">
                    <div class="soon-list">
                        <div class="u-loading"><em></em></div>
                    </div>
                </div>
                <div class="soon-list-con">
                    <div class="soon-list">
                        <div class="u-loading"><em></em></div>
                    </div>
                </div>
                <div class="soon-list-con">
                    <div class="soon-list">
                        <div class="u-loading"><em></em></div>
                    </div>
                </div>
                <div class="soon-list-con">
                    <div class="soon-list">
                        <div class="u-loading"><em></em></div>
                    </div>
                </div>
                <div class="soon-list-con">
                    <div class="soon-list">
                        <div class="u-loading"><em></em></div>
                    </div>
                </div>
                <div class="soon-list-con">
                    <div class="soon-list">
                        <div class="u-loading"><em></em></div>
                    </div>
                </div>
            </div>
            <div class="check-out"><a href="/list/hot20.html" target="_blank" title="查看所有商品">查看所有商品</a></div>

            <!--新品上架-->
            <div class="g-title">
                <h3 class="fl"><i></i>新品上架</h3>
                <div class="m-other fr">
                    <a href="/list/date20.html" target="_blank" title="更多" class="u-more">更多</a>
                </div>
            </div>
            <div class="announced-soon clrfix announced-soon-new" id="divNewGoodsList">
                <div class="soon-list-con">
                    <div class="soon-list">
                        <div class="u-loading"><em></em></div>
                    </div>
                </div>
                <div class="soon-list-con">
                    <div class="soon-list">
                        <div class="u-loading"><em></em></div>
                    </div>
                </div>
                <div class="soon-list-con">
                    <div class="soon-list">
                        <div class="u-loading"><em></em></div>
                    </div>
                </div>
                <div class="soon-list-con">
                    <div class="soon-list">
                        <div class="u-loading"><em></em></div>
                    </div>
                </div>
                <div class="soon-list-con">
                    <div class="soon-list">
                        <div class="u-loading"><em></em></div>
                    </div>
                </div>
                <div class="soon-list-con">
                    <div class="soon-list">
                        <div class="u-loading"><em></em></div>
                    </div>
                </div>
                <div class="soon-list-con">
                    <div class="soon-list">
                        <div class="u-loading"><em></em></div>
                    </div>
                </div>
                <div class="soon-list-con">
                    <div class="soon-list">
                        <div class="u-loading"><em></em></div>
                    </div>
                </div>
            </div>

            <!--晒单分享-->
            <div class="g-title">
                <h3 class="fl"><i></i>晒单分享</h3>
                <div class="m-other fr">
                    <a href="/share/new20.html" target="_blank" title="更多" class="u-more">更多</a>
                </div>
            </div>
            <div class="g-single-sun">
                <div class="singleL fl" id="divPostRec">
                    <div class="u-loading"><em></em></div>
                </div>
                <div class="singleR fl">
                    <ul id="ul_PostList">
                    <li>
                        <div class="u-loading"><em></em></div>
                        </li>
                        <li>
                            <div class="u-loading"><em></em></div>
                        </li>
                        <li>
                            <div class="u-loading"><em></em></div>
                        </li>
                        <li>
                            <div class="u-loading"><em></em></div>
                        </li>
                        <li>
                            <div class="u-loading"><em></em></div>
                        </li>
                        <li>
                            <div class="u-loading"><em></em></div>
                        </li>
                    </ul>
                </div>
            </div>
            
		
		<!-- <div class="m-index-mod m-index-share1">

	<div class="w-hd">

		<h3 class="w-hd-title">友情链接</h3>

		<a class="w-hd-more" href="">首页要求权重≥4.低于4移至内页.申请友链&gt;&gt;</a>

	</div>

	<div id="Scroll"> 

		<ul id="ScrollMe" style="overflow: hidden;margin-top:0px;"> 
			<li><a href="http://www.qmduobao.com/" target="_blank">全民夺宝</a></li>
			
			<li><a href="http://www.qmduobao.com/" target="_blank">一元夺宝</a></li>
						
			<li><a href="http://www.1119.la/" target="_blank">一元云购</a></li>			
			
			<li><a href="http://www.qmduobao.com/" target="_blank">1元云购</a></li>			

			<li><a href="http://haitaozhinan.com/" target="_blank">海淘指南</a></li>
			
			<li><a href="http://zx.meilele.com/dianshi/" target="_blank">电视</a></li>

			<li><a href="http://www.languang.cc/xiguayingyuan/" target="_blank">西瓜影院</a></li>
			
			<li><a href="http://www.123huodong.com/iqyvip" target="_blank">爱奇艺会员账号共享</a></li>
			
			<li><a href="http://www.3yb2b.com/news/" target="_blank">今日头条</a></li>
			
			<li><a href="http://www.taoyouke.com/" target="_blank">互刷平台</a></li>
			
			<li><a href="http://www.mizhekou.com/" target="_blank">米折网</a></li>
			
			<li><a href="http://www.tianfu028.com/" target="_blank">天府网</a></li>
			
			<li><a href="http://www.shangkatong.com/" target="_blank">会员管理系统</a></li>
		
			<li><a href="http://www.ahfgj.com/" target="_blank">安化住房公积金</a></li>
			
			<li><a href="http://www.shangti.cn/" target="_blank">健身器材</a></li>

			<li><a href="http://www.jiechan5.com/" target="_blank">姐馋网</a></li>
			
			<li><a href="http://www.886abc.com/" target="_blank">192.168.1.1</a></li>
			
			<li><a href="http://www.jiukuaiyou.cc" target="_blank">九块邮</a></li>		
			
			<li><a href="http://www.esocks.com.cn/" target="_blank">袜子批发网</a></li>
			
			<li><a href="http://www.zekv.com/" target="_blank">公司注册</a></li>
			
			<li><a href="http://www.xa101.com/" target="_blank">西安101人才网</a></li>
			
			<li><a href="http://www.10yuangou.cn/" target="_blank">米折网9.9包邮</a></li>
			
			
			<li><a href="http://dzs.cc/" target="_blank">天下电子书</a></li>
			
			<li><a href="http://www.daojia.com/jh_jpysjg/" target="_blank">金牌月嫂价格</a></li>
			
			<li><a href="http://www.daojia.com/jh_bjys/" target="_blank">北京月嫂</a></li>
			
			<li><a href="http://www.jiukuaiyou.cc" target="_blank">九块邮</a></li>
			
		</ul>

	</div> 
		
        </div>      -->
	</div>	
		
		
<script language="javascript" type="text/javascript">
var $indexImg = ${indexImgList };
</script>
    <script language="javascript" type="text/javascript" src="<%=ApplicationListenerImpl.sysConfigureJson.getSkinUrl()%>/js/index.js?data=201510251"></script>
    
    <link type="text/css" rel="stylesheet" href="<%=ApplicationListenerImpl.sysConfigureJson.getSkinUrl()%>/css/pagedialog.css" />
    <script language="javascript" type="text/javascript" src="<%=ApplicationListenerImpl.sysConfigureJson.getSkinUrl()%>/js/pagedialog.js"></script>
    <div class="pageDialogBG" id="pageDialogBG"></div>
    <div class="pageDialogBorder" id="pageDialogBorder"></div>
    <div class="pageDialog" id="pageDialog">
    	<div class="pageDialogClose" id="pageDialogClose" title="关闭"></div>
    	<div class="pageDialogMain" id="pageDialogMain"> </div>
    </div>
	</body>
</html>
