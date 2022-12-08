public with sharing class SetDemo {
    public static void citySet() {
        set <string> cities = new Set<String>();
        cities.add('Berlin');
        cities.add('Istanbul');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Nairobi');
        cities.add('TOKYO');
        
        System.debug('cities are ' + cities);
    }

    public static void randomIntegerSet() {
        Set<Integer> setInt = new Set<Integer>();
        setInt.add(15);
        setInt.add(10);
        setInt.add(21);
        setInt.add(15);
        setInt.add(15);

        System.debug(setInt);
    }

    public static set<integer> setFromList(List<Integer> intList) {
        Set<Integer> returnSet = new Set<Integer>();
        returnSet.addAll(intList);
        return returnSet;
    }

    public static set<string> capilizeSet(set<string> setString) {
        Set<String> returnSet = new Set<String>();
        for (string eachString : setString) {
            string tempString = eachString.toUpperCase();
            returnSet.add(tempString);
        }
        return returnSet;
    }
}
