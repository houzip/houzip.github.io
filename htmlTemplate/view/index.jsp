<%@ page  isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<c:set var="ctxpath" value="${pageContext.request.contextPath}"></c:set>
<c:set var="ctxfullpath" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}"></c:set>
<c:set var="session" value="${USER}"></c:set>
<c:set var="menus" value="${MENUS}"></c:set>


<c:choose>
    <c:when test="${ctx == '/'}">
        <c:set var="ctx" value="${ctx}"></c:set>
        <c:set var="ctxfullpath" value="${ctxfullpath}"></c:set>
    </c:when>
    <c:otherwise>
        <c:set var="ctx" value="${ctx}/"></c:set>
        <c:set var="ctxfullpath" value="${ctxfullpath}/"></c:set>
    </c:otherwise>
</c:choose>
<c:set var="ctxaction" value="${ctx}"></c:set>
<c:set var="ctx" value="${ctx}"></c:set>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="ie6" > <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="ie7" > <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="ie8" > <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="ie9" > <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class=""> <!--<![endif]-->
<head>
    <base href="${ctxpath}/">
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">

    
    
    <meta name="description" content="XBRL Xweb">
    
    

    <title>XBRL-Xweb</title>

    

    
    <link href="http://localhost:3080/app-style.css" rel="stylesheet">
    

    
</head>

<body>
<div id="react-content" style="width: 100%; height: 100%"></div>
<script type="text/javascript" src="${ctxpath}/js/jquery.min.-2.1.7.js"></script>
<script type="text/javascript" src="${ctxpath}/js/MDuPont.js"></script>
<script type="text/javascript" src="${ctxpath}/js/tripledes.js"></script>
<script type="text/javascript" src="${ctxpath}/js/mode-ecb.js"></script>
<script type="text/javascript">
    // TODO 判断是否需要自动刷新
  window.___INITIAL_ENV__ = {};
  window.___INITIAL_INIT__ = {};
  window.___INITIAL_ENV__.version = '1.0.0';
  window.___INITIAL_ENV__.host = '${ctx}';
  window.___INITIAL_ENV__.baseRoot = '${ctxpath}';
  window.___INITIAL_ENV__.appRoot = '${ctxpath}/index';
  window.___INITIAL_ENV__.routerRoot = '/index';
  window.___INITIAL_ENV__.logoutUrl = 'http://localhost:8070/cas/logout?service=http://localhost:8080/now';
  window.___INITIAL_ENV__.apiHost = '${ctx}api/secure/v1/chat';
  window.___INITIAL_ENV__.userId = '9999';
  window.___INITIAL_ENV__.userName = '系统用户';
  window.___INITIAL_ENV__.sessionId;
  window.___INITIAL_ENV__.appWidth = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;
  window.___INITIAL_ENV__.appHeight = window.innerHeight || document.documentElement.clientHeight || document.body.clientHeight;
  window.___INITIAL_ENV__.socketHost = '${ctxpath}ws/&inquiryId=ps';
  window.___INITIAL_ENV__.refrashTime = 120;//刷新时间2分钟
  window.___INITIAL_INIT__.session = '${session}'; //用户信息
  window.___INITIAL_INIT__.menus = '${menus}'; //用户信息
  window.___INITIAL_INIT__.token = '${X-CSRF-Token}'; // 加密令牌信息
</script>












<script src="http://localhost:3080/vendor/vendor-bundle.js"></script>

<script src="http://localhost:3080/app/app-bundle.js"></script>




<style>
    @font-face {
        font-family: 'anticon';
        src: url('${ctxpath}/dist/assets/font/iconfont.eot'); /* IE9*/
        src:
            /* IE6-IE8 */
                url('${ctxpath}/dist/assets/font/iconfont.eot?#iefix') format('embedded-opentype'),
                    /* chrome、firefox */
                url('${ctxpath}/dist/assets/font/iconfont.woff') format('woff'),
                    /* chrome、firefox、opera、Safari, Android, iOS 4.2+*/
                url('${ctxpath}/dist/assets/font/iconfont.ttf') format('truetype'),
                    /* iOS 4.1- */
                url('${ctxpath}/dist/assets/font/iconfont.svg#iconfont') format('svg');
    }
</style>
</body>
</html>