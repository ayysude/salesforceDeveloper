List<Case> listCase = new list<Case> ();
for (Integer i = 0; i<205; i++) {
    Case c = new Case();
    c.Subject = 'There is a bug';
    c.Description = 'resolve it';
    c.Status = 'New';
    c.Origin = 'Web';
    listCase.add(c);
}
insert listCase;

List<Case> getCases = [SELECT Id, status FROM Case WHERE status = 'New'];
for (Case eachCase : getCases) {
    eachCase.Status = 'Working';
}
update getCases;