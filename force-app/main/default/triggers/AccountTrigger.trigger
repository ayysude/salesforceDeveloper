trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger');

        map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
        map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key
        set<id> accountIds = accTriggerNewMap.keySet(); //all the IDS.
        integer countWebsite = 0;

        for (Id eachId : accountIds) {
            //get NEW account value from NewMap - id is same in newmap and oldmap
            account newAcc = accTriggerNewMap.get(eachId);
            string newWebsite = newAcc.Website;
            system.debug('** newWebsite -> ' + newWebsite);
            //get OLD account value from OldMap
            account oldAcc = accTriggerOldMap.get(eachId);
            string oldWebsite = oldAcc.Website;
            system.debug('** oldWebsite -> ' + oldWebsite);

            if (newWebsite != oldWebsite) {
                system.debug('Account is ' + newAcc.Name + ', website changed to ' + newwebsite);
                countwebsite++;
            }
           
        }
        system.debug('website updated for # of accounts => ' + countwebsite);
    }










    /*
    List<account> accTriggerOld = trigger.old; //list of old records
    List<account> accTriggerNew = trigger.new; //list of new records
    map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
    map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key

    if (Trigger.isAfter && Trigger.isUpdate) {

        //old account name and new account name using ONE for loop.
        
        //get set of id using map.
        set<id> accountIds = accTriggerNewMap.keySet();
        for (Id eachId : accountIds) {
            //get NEW account value from NewMap - id is same in newmap and oldmap
            account newAcc = accTriggerNewMap.get(eachId);
            system.debug('NEW Acc Name is ' +  newacc.Name);
            //get OLD account value from OldMap
            account oldAcc = accTriggerOldMap.get(eachId);
            system.debug('Old Acc Name is ' +  oldacc.Name);
        }
    }
    */

    /*
    //what elements we have in these maps.
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert old => ' + accTriggerOld);
        system.debug('before insert new => ' + accTriggernew);
        system.debug('before insert old map => ' + accTriggerOldMap);
        system.debug('before insert new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert old => ' + accTriggerOld);
        system.debug('after insert new => ' + accTriggernew);
        system.debug('after insert old map => ' + accTriggerOldMap);
        system.debug('after insert new map => ' + accTriggernewMap);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update old => ' + accTriggerOld);
        system.debug('before update new => ' + accTriggernew);
        system.debug('before Update old map => ' + accTriggerOldMap);
        system.debug('before Update new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update old => ' + accTriggerOld);
        system.debug('after update new => ' + accTriggernew);
        system.debug('after Update old map => ' + accTriggerOldMap);
        system.debug('after Update new map => ' + accTriggernewMap);
    }
    */
    
     
    /*
   if (trigger.isAfter) {
        List<Account> AccountTriggerNew = trigger.new;
        //New updated values of records
        set<id> setIds = new set<id>();
        //Ids of account which are inserted/updated.
        for (Account newAcc : AccountTrigger) {
            id accId = newAcc.id;
            setIds.add(accId); //adding Id to newly create set. 
        }
        System.debug(setIds);
   }
   */     
    /* 
    if (trigger.isBefore && trigger.isUpdate) {
        List<Account> accTriggerOld = trigger.old; //old (previous) values of record
        for (Account oldAcc : accTriggerOld) {
            System.debug('Old acc name ' + oldAcc.Name + 'old acc id ' + oldAcc.Id);
        }

    }

    if (trigger.isAfter && trigger.isUpdate) {
        List<Account> accTriggerNew = trigger.new;// new updated values of record
        for (Account newAcc : accTriggerNew) {
            System.debug('New acc name ' + newAcc.Name + 'new acc id ' + newAcc.Id);
        }
    }
     */
    
    /*
    if (trigger.isBefore && trigger.isInsert) {
        system.debug('account before insert trigger.old ' + trigger.old);
    }
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('account after insert trigger.old ' + trigger.old);
    }

    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('account before Update trigger.old ' + trigger.old);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('account after Update trigger.old ' + trigger.old);
    }
    */
    
    
    /*
    List<accaunt> accTriggerNew = trigger.new;
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('BEFORE insert new record ==>' + accTriggerNew);
        system.debug('BEFORE new account size ==>' + accTriggerNew.size());
        for ( account eachAcc : accTriggerNew) {
            system.debug('BEFORE UPDATE each acc id is ' + eachAcc.Id + 'each acc name is ' + each.Name);
        }
    }

    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('AFTER newly inserted record ==>' + accTriggerNew);
        system.debug('AFTER newly inserted account size ==>' + accTriggerNew.size());
        for ( account eachAcc : accTriggerNew) {
            system.debug('AFTER UPDATE  each acc id is ' + eachAcc.Id + 'each acc name is ' + each.Name);
        }
    }
*/
/*
    if (trigger.isBefore && trigger.isInsert) {
        system.debug('BEFORE insert new record ==>' + accTriggerNew);
        system.debug('BEFORE new account size ==>' + accTriggerNew.size());
        for ( account eachAcc : accTriggerNew) {
            system.debug('BEFORE each acc id is ' + eachAcc.Id + 'each acc name is ' + each.Name);
        }
    }

    if (trigger.isAfter && trigger.isInsert) {
        system.debug('AFTER newly inserted record ==>' + accTriggerNew);
        system.debug('AFTER newly inserted account size ==>' + accTriggerNew.size());
        for ( account eachAcc : accTriggerNew) {
            system.debug('AFTER each acc id is ' + eachAcc.Id + 'each acc name is ' + each.Name);
        }
    }
    */

  
  
    /*//insert
    if (trigger.isInsert && trigger.isAfter) {
        system.debug('account after insert trigger called.');
    }
  
    if (trigger.isInsert && trigger.isBefore) {
        system.debug('account before insert trigger called');
    }
    //update
    if (trigger.isUpdate && trigger.isBefore) {
        system.debug('account before UPDATE trigger called');
    }
    if (trigger.isUpdate && trigger.isAfter) {
        system.debug('account after UPDATE trigger called');
    }
    */

    /* //before insert
    if (Trigger.isInsert) {
        system.debug('account before INSERT trigger called');
    }

    if (Trigger.isUpdate) {
        system.debug('account before UPDATE trigger called');
    }
    */

   /* 
    if (Trigger.isBefore) {
        system.debug('account before insert trigger called');

    }
    if (Trigger.isAfter) {
        system.debug('account after insert trigger called');

    }
    */
}