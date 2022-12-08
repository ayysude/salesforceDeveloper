public class DateTimeMethodsDemo {
    public void calculateAgeInMonths() {
        //1. today's day
        date dttoday = date.today();
        //2.yasin's birthday
        date yBdate = date.newInstance(1975, 5, 10);
        //3.age in  months
        integer ageINMonths = yBdate.monthsBetween(dttoday);
        system.debug('Yasin age in month is ' + ageINMonths);
    }

    public void calculateAgeINDays() {
        //1. today's day
        date dttoday = date.today();
        //2.yasin's birthday
        date yBdate = date.newInstance(1975, 5, 10);
        //3.age in days
        integer ageINDays = yBdate.daysBetween(dttoday);
        system.debug('Yasin age in day is ' + ageINDays);
    }
    public void printSubscriptionEndDate() {
        Date subscriptionStartDate = date.today();
        Date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('subscription ends on ' + subscriptionEndDate);
        integer endDateMonth = subscriptionEndDate.month();
        system.debug('subscription end date month is ' + endDateMonth);
        integer endDateYear = subscriptionEndDate.year();
        system.debug('subscription end date YEAR is ' + endDateYear);

    }
    public void printOfferEndDateTime(){
        Datetime dtNow = datetime.now();

        Datetime dtOfferEnd = dtNow.addHours(51);
        system.debug('offer end date & time ' + dtOfferEnd);

        date dateOfferEnd = dtOfferEnd.date();
        system.debug('date of offer end ' + dateOfferEnd);
    }

    public void birthDAteToMilliSeconds() {
        datetime birthDate = datetime.newInstance(1975, 5, 10, 6, 30, 5);
        long longBirthDate = birthDate.getTime();
        system.debug('long birth date => '+ longBirthDate);
    }
}
