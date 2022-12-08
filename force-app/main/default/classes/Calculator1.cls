public class Calculator1 {
    //public ---> access modifier
    //void --> return type. 
    //          it can be string, boolean, date, etc..
    //() --> parameters.
   public void welcomeMessage(){
        system.debug('welcome to apex calc');
   }

   public void printNewMessage(string msg){
     // method name = printNewMessage
     // data type of paramater = string
     // return type = void
     //msg = variable => is used INSIDE the method.
        system.debug(msg);
   }
   //return string, append '...ok cool' to parameter
   public string printAndReturnMessage(string msg){
        string returnString = msg + '...OK cool.';
        return returnString;
   }

   public integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
   }

   public integer add(integer x, integer y, integer z){
        integer sum = x + y + z;
        return sum;
   }

   public boolean leapYearCheck(date dt) {
     integer year = dt.year();//use built-in method.
     boolean lp = date.isLeapYear(year);
     return lp;
   }
}