public class Calculator {
    //void => return type and ()=> inside parameters
    public void wellcomeMassage() {
        system.debug('welcome to apex calc');

    }
    public void printNewMessage(string msg) {
        //msg = variable =>is used inside the method
        system.debug(msg);
    }

    public string printAndReturnMessage(string msg) {
        string returnString =  msg + '...OK cool.';
        return returnString;
        
    }

    public integer add(integer a, integer b) {
        integer sum = a + b;
        return sum;
    }

    public integer add(integer x, integer y, integer z) {
        integer sum = x + y + z;
        return sum;
    }
    //parameter => date, return type => boolean
    public boolean leapYearCheck(date dt) {
        integer year = dt.year();
        boolean lp = date.isLeapYear(year);
        return lp;
    }
}
