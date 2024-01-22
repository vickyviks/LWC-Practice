public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(){
        return [
            Select FirstName,LastName,Email
            From Contact
            with SECURITY_ENFORCED
        ];
        //throw new AuraHandledException('Forced Error');
    }
}