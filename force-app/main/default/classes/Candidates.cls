public class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;
    public static integer countCandidates = 0;

    public Candidates(){
        countCandidates++;

    }
    public Candidates(string n, string g){
        this();
        this.name = n;
        this.gender = g;
    }

    public void printCandidate() {
        system.debug('Name is ' + Name);
        system.debug('Gender is ' + Gender);
        system.debug('Company name is '+ CompanyName);
    }

    public static void printCandidateInfo() {
        //we can access only static memebers inside  static method.
        system.debug('Company name is ' + CompanyName);
        //we cannot access non-static members inside static method.
        //system.debug('Name is ' + Name);
    }
}
