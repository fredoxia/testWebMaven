<html>
<head>
<script type="text/javascript" src=/js/pazuclient.js></script>
<script>
var PAZU_Config = { 
        prot:"http",           //访问你的应用的协议   
        server: 'localhost',   //打印服务器地址，如果你的应用面向Windows平台，则无需更改（每台客户端都自己做打印服务器） 
        port: 6894,            //不要更改端口,并确保打印服务器上 
        license:'8F34B771723DCC171F931EA900F9967E'             //你的PAZU许可码，可以自行在官方申请，不收费，转发微信朋友圈即可申请成功 
    }
function chkPAZU(){ 
    if(!window.PAZU){ 
       alert("PAZU云打印组件加载失败,请下载安装 \r\n :" + PAZU_Config.server + "/可以下载到PAZUCloud_setup.exe的url"); 
       //也可以你自己在页面里面构建一个链接提示用户下载  
       return false;
    } 
    return true; 
 }
function printF(){
	if (chkPAZU()){
		var dfPrinter=pazu.TPrinter.getDefaultPrinter();
		PAZU.TPrinter.printToDefaultPrinter("赠品总计: ");
	}
}
</script>
</head>
<body>
<h2>Hello World!</h2>
test of print
<a href="#" onclick="printF();">test</a>
</body>
</html>
