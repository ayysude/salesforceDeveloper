Car tesla = new car();

system.debug('tesla is created');
tesla.carName = 'model S ';
tesla.switchOn();
tesla.carColor = 'Black';
system.debug('tesla -> ' + tesla);
system.debug('tesla -> ' + tesla.carColor);
tesla.drive();
tesla.drivingAtMaxSpeed();
system.debug('tesla is done');

system.debug('bmw is created');
Car bmw = new car();
bmw.carName = '5.20iL ';
bmw.carColor = 'white';
bmw.switchON();
system.debug('bmw -> ' + bmw);
system.debug('bmw -> ' + bmw.carColor);
bmw.drive();
bmw.drivingAtMaxSpeed();
system.debug('bmw is done');
//system.debug('bmw -> ' + bmw.maxSpeed);


