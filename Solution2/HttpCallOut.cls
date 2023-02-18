public class HttpCallOut {
    public void getHttpCallOutResponse()
    {
         Http http = new Http();
         HttpRequest req = new HttpRequest();
         req.setMethod('GET');
         req.setEndpoint('https://postman-echo.com/get?foo1=bar1&foo2=bar2');
         req.setHeader('Content-Type', 'application/json');
         HttpResponse response= new HttpResponse();
         response=http.send(req);
         System.debug('response>>'+response.getBody());
    }
     
}