Calculator c1 = new Calculator();
c1.wellcomeMassage();


string message = 'print this message';
c1.printNewMessage(message);

c1.printNewMessage('now print this.');

//integer msg = 15;
//c1.printNewMessage(msg);

Calculator c2 = new Calculator();
string returnC2 = c2.printAndReturnMessage('print this msg');
system.debug(returnC2);

Calculator c3 = new Calculator();
integer c3Sum1 = c3.add(10, 15);
system.debug('c3Sum1 is ' + c3Sum1);
integer c3Sum2 = c3.add(45, 555);
system.debug('c3Sum2 is ' + c3Sum2);
integer x = 88;
integer y = 99;
integer c3Sum3 = c3.add(x, y);
system.debug('c3Sum3 is ' + c3Sum3);

Calculator c4 = new Calculator();
integer c4Sum1 = c4.add(10,25,45);
system.debug(c4Sum1);

Calculator c5 = new Calculator();
Date date1 = Date.newInstance(2022, 2, 22);
boolean date1LP = c5.leapYearCheck(date1);
system.debug(date1 + 'date 1 is leap year ' + date1LP);
