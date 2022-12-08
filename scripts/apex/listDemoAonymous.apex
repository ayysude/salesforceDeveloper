ListDemo.allCats();

string valueAt0 = ListDemo.cadidatesList(0);
system.debug(valueAt0);

string valueAt2 = ListDemo.cadidatesList(2);
system.debug(valueAt2);

string valueAt5 = ListDemo.cadidatesList(5);
system.debug(valueAt5);


ListDemo.randomIntegerList();

List<string> listStr = new List<String>();
if (listStr.isEmpty()){
    system.debug('List is EMPTY.OKAY');
}

list<integer> listInteger = new List<Integer>();
listInteger.add(10);
listInteger.add(15);
listInteger.add(21);
listInteger.add(15);
listInteger.add(12);
listInteger.add(18);
system.debug('before sort --> ' + listInteger);
listInteger.sort();
system.debug('after sort --> ' + listInteger);