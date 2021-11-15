/**
 * Created by esposito on 11/15/2021.
 */

public with sharing class GatewayTestController {
    public PaymentGateway pg {get;set;}

    public GatewayTestController(){
        pg = new PaymentGateway();
    }
}