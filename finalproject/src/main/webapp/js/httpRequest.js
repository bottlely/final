var XHR = null;
var XHR1 = null;

function getXHR(){
   if(window.ActiveXObject){
      return new ActiveXObject('Msxml1.XMLHTTP');
   }else if(window.XMLHttpRequest){
      return new XMLHttpRequest();
   }else{
      return null;
   }
}

function sendRequest(url,params,callback,method){
   XHR = getXHR();
   XHR1 = getXHR();
   //1.접속방식의 검증
   var httpUrl = url;
   var httpMethod = method ? method:'GET';
   if(httpMethod != 'GET' && httpMethod != 'POST'){ //오타인지 확인하기 위해
         httpMethod = 'GET';
   }
   
   //2.파라미터 검증
   var httpParams = (params == null || params == '') ? null : params;
   
   //3.접속방식에 따른 파라미터 처리
   if(httpMethod == 'GET' && httpParams != null){
      httpUrl = url + '?' + httpParams;
   }
   
   XHR.onreadystatechange = callback;
   XHR.open(httpMethod,httpUrl,true);
   XHR.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
   XHR.send(httpMethod == 'POST' ? httpParams:null);
}