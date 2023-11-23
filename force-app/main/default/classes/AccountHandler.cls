public with sharing class AccountHandler {
   
    public static Account insertNewAccount(String accountName) {
        try { 
            Account newAccount = new Account(Name = accountName);
            insert newAccount;
            return  newAccount;
        } catch (DmlException e) {
            System.debug('Failed to insert account. Exception: ' + e.getMessage());
            return null;
        }
    }
}