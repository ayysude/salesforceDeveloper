public class PrimitiveDataTypeDemo3 {
    public void printNewDateTime() {
        //3.year, month,day, hour, minute, second
        DateTime dt3 = Datetime.newInstance(2021, 5, 15, 9, 5, 40);
        system.debug('dt3 is ' + dt3);

        Datetime dt4 = Datetime.newInstance(300000);
        system.debug('dt4 is ' + dt4);

        Long longTime = 1487954621154L;//miliseconds from 1970 jan 1 000000.
        Datetime dt4_1 = Datetime.newInstance(longtime);
        system.debug('dt4_1 is' + dt4_1);

        datetime dt6 = datetime.now();//current time
        system.debug('dt 6 current datetime is ' + dt6);//GMT time

        Datetime dt5 = Datetime.newInstanceGmt(1998, 8, 4, 5, 1, 4);
        system.debug('dt5 is ' + dt5);//gmt
    }
}
