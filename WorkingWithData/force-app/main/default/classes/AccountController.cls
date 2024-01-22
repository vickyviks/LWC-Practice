public with sharing class AccountController {
    @AuraEnabled(cacheable = true)
    public static List<Account> getAccounts(){
        return [
            Select Name,AnnualRevenue,Industry
            From Account
            WITH SECURITY_ENFORCED
            Order by Name
        ];
    }  
}