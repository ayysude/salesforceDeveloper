trigger CaseTrigger on Case (before insert, before update ) {
    if (trigger.isInsert) {
        System.debug('before insert case trigger called');
    }
    if (trigger.isUpdate) {
        System.debug('before update trigger called');
        CaseTriggerHandler.countTriggerExecution++;
        System.debug('# of times trigger ran ' + CaseTriggerHandler.countTriggerExecution);
        integer size = trigger.size;
        CaseTriggerHandler.countTriggerRecords += size;
        System.debug('# of records updated ' + CaseTriggerHandler.countTriggerRecords);
    }

}