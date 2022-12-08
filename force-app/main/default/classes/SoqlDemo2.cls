public class SoqlDemo2 {
    public static void childToParent_1() {
        List<contact> listContacts = [Select id, name, Account.Name, Account.industry from Contact WHERE Account.industry = 'Energy'];
        system.debug(listContacts);//by default in contact we don't have account fields. so this doesn't show.
        //get account name from contact record
        for (Contact eachContact : listContacts) {
            String accName = eachContact.Account.Name;
            system.debug('contact name = ' + eachContact.Name + 'its acc name is ' + accName);
        }
    }
    public static void parentToChild_1() {
         //if our outer query is account. and inner query is opportunity.
        //what list it would return? 
        List<account> listAccOpp = [select id, name, annualrevenue, type, (select name, amount from opportunities where stageName = 'Closed Won') from account where type = 'Customer - Direct'];
        for (account eachAcc : listAccOpp) {
            system.debug('acc name => ' + eachAcc.Name + ', annual revenue => ' + eachAcc.AnnualRevenue);
            List<Opportunity> listOpp = eachAcc.Opportunities;
            for (opportunity eachOpp : listOpp) {
                system.debug('-- opp name => ' + eachOpp.Name + ', amount is ' + eachOpp.Amount);
            }
        }

    }
}