public with sharing class ContactAndLeadSearch {
 

    public static List<List<SObject>> searchContactsAndLeads(String search){
        List<List<SObject>> searchList = [FIND :search  IN ALL FIELDS 
        RETURNING Lead(FirstName,LastName), Contact(FirstName,LastName)];

        return  searchList;
    }
}