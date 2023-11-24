trigger ClosedOpportunityTrigger on Opportunity(after insert, after update) {
    List<Opportunity> relatedOpps = [SELECT Id,Name,Probability FROM Opportunity
    WHERE AccountId IN :Trigger.new];
    for (Opportunity opp : relatedOpps) {
        if(opp.StageName.equalsIgnoreCase('Closed Won')){
            
        }
    }
}