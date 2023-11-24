trigger ClosedOpportunityTrigger on Opportunity(after insert, after update) {
    List<Opportunity> relatedOpps = [SELECT Id,Name,Probability,StageName FROM Opportunity
];
    List<Task> newTask= new List<Task>();
    for (Opportunity opp : relatedOpps) {
        if(opp.StageName.equalsIgnoreCase('Closed Won')){
            Task task = new Task();
            task.Subject = 'Tarefa de teste de acompanhamento';
            task.WhatId = opp.Id;
            newTask.add(task);
        }
    }

    insert newTask;
}