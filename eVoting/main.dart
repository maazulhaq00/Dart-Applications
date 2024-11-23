Map<int, Candidate> candidateList = {};

void main(){

  RegisterCandidate(23, "JavaScript");
  RegisterCandidate(33, "C#");
  RegisterCandidate(43, "Dart");

  for (var c in candidateList.values) {
    print(c.name);
  }

  castVote(23);
  castVote(23);
  castVote(23);
  castVote(33);
  castVote(33);
  castVote(33);
  castVote(43);
  // castVote(44);

  displayResult();
}


class Candidate {
  var id, name, votes;

  Candidate(int id, String name, [int votes = 0]){
    this.id = id;
    this.name = name;
    this.votes = votes;
  }
  void incVote(){
    this.votes++;
  }
}

void RegisterCandidate(int id, String name){

  Candidate c = Candidate(id, name);

  candidateList.addAll({id: c});
}

void castVote(int id){

  if(candidateList.containsKey(id)){
    // inc
    candidateList[id]?.incVote();
  }
  else{
    print("Invalid Candidate");
  }

}

void displayResult(){

  for (var cand in candidateList.values) {

    print("candidate ${cand.name} has ${cand.votes} votes");
    
  }
}