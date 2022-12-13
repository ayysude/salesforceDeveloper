trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
    if (Trigger.isBefore) {
        if (Trigger.isUpdate) {
            system.debug('we are in before update trigger.');
            ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
    }
   
}
/*
trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
    //I want to print when we are in BEFORE
    if (trigger.isBefore) {
        system.debug('we are in BEFORE. not saved.');
        if (trigger.isInsert) {
            system.debug('we are in before insert trigger.');
        }
        if (trigger.isUpdate) {
            system.debug('we are in before update trigger.');
        }
    }
    if (trigger.isAfter) {
        system.debug('we are in AFTER.sbnc.');
        if (trigger.isInsert) {
            system.debug('we are in after insert trigger');
        }
        if (trigger.isUpdate) {
            system.debug('we are in after update trigger');
        }
    }
}
*/