Candidates.CompanyName = 'Soft Innovas';
Candidates.printCandidateInfo();
system.debug('Start count of candidates = ' + Candidates.countCandidates);


Candidates c1 = new Candidates();
c1.Name = 'Jerry';
c1.Gender = 'Male';
c1.printCandidate();

Candidates c2 = new Candidates();
c2.Name = 'Elaine';
c2.Gender = 'Female';
c2.printCandidate();


Candidates.CompanyName = 'Faras Industry';
Candidates c3 = new Candidates();
c3.Name = 'George';
c3.Gender = 'Male';
c3.printCandidate();

system.debug('-----');
c1.printCandidate();
system.debug('------');
c2.printCandidate();

Candidates c4 = new Candidates();
c4.Name = 'Mary';
c4.Gender = 'Female';
c4.printCandidate();

Candidates c5 = new Candidates('Newman', 'Male');
c5.printCandidate();

Candidates.printCandidateInfo();
system.debug('End count of candidates = ' + Candidates.countCandidates);

