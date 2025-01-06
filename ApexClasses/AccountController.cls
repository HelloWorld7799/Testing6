public with sharing class AccountController {
    @AuraEnabled(Cacheable = true)
    public static List<Account> getAccounts() {
        return [SELECT Id, Name,Rating,Industry FROM Account ];
    }
}