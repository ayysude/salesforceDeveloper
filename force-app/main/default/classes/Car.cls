public class Car {
    // class variable
    public string carName = '';
    public string carColor = '';
    //private integer maxSpeed = 150;
    //if we dont have any access modifier, by default it is private
    integer maxSpeed = 150;

    //class method
    public void switchON() {
        datetime switchOnTime = datetime.now;
        system.debug('starting the car');
        return switchOnTime;
    }

    public void drive() {
        system.debug('driving ' + carName + 'of color ' + carColor);
    }
    public void drivingAtMaxSpeed() {
        maxSpeed = 200;
        string drivingDescription = 'driving ' + carName + 'at ' + maxSpeed + 'km/h'; 
        system.debug(drivingDescription);
    }
   

}
