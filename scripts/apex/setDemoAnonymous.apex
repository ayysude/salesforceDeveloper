SetDemo.citySet();
SetDemo.randomIntegerSet();

list<integer> listInteger = new List<Integer>();
listInteger.add(10);
listInteger.add(15);
listInteger.add(21);
listInteger.add(15);
listInteger.add(12);
listInteger.add(18);

system.debug('list -> ' + listInteger);
Set<Integer> setInt = SetDemo.setFromList(listInteger);
System.debug('set -> ' + setInt);

set <string> cities = new Set<String>();
        cities.add('Berlin');
        cities.add('Istanbul');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Nairobi');
        cities.add('TOKYO');

Set<String> upperCaseSet = SetDemo.capilizeSet(cities);
System.debug(upperCaseSet);
        