<!DOCTYPE html>

<html lang="en">
<head>
<title>${file.name}文件预览</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0">
    <#include "*/commonHeader.ftl">
  <script src="js/base64.min.js" type="text/javascript"></script>
</head>
	<#if currentUrl?contains("http://") || currentUrl?contains("https://") || currentUrl?contains("file://")>
    <#assign finalUrl="${currentUrl}">
  <#elseif currentUrl?contains("ftp://") >
   <#assign finalUrl="${currentUrl}">
<#else>
    <#assign finalUrl="${baseUrl}${currentUrl}">
</#if>
<body>
<iframe src="" width="100%" frameborder="0"></iframe>
</body>
<script type="text/javascript">
    var url = '${finalUrl}';
    var baseUrl = '${baseUrl}'.endsWith('/') ? '${baseUrl}' : '${baseUrl}' + '/';
    if (!url.startsWith(baseUrl)) {
         url = baseUrl + 'getCorsFile?urlPath=' + encodeURIComponent(Base64.encode(url));
    }
    document.getElementsByTagName('iframe')[0].src =  "${baseUrl}eml/index.html?file="+encodeURIComponent(url);
    document.getElementsByTagName('iframe')[0].height = document.documentElement.clientHeight - 10;
    /**
     * 页面变化调整高度
     */
    window.onresize = function () {
        var fm = document.getElementsByTagName("iframe")[0];
        fm.height = window.document.documentElement.clientHeight - 10;
    }
	
  		 /*初始化水印*/
 if (!!window.ActiveXObject || "ActiveXObject" in window)
{
}else{
 initWaterMark();
}
</script>
</html>