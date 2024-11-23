void main(){

  Map<String, int> studentsScore = {
    "A": 76,
    "B": 89,
    "C": 98,
    "D": 56
  };

  double average = CalculateAverage(studentsScore);

  print("Average is $average");

}
double CalculateAverage(Map<String, int> scoreMap){

  int totalStudents = scoreMap.length;
  int totalScores = 0;
  for (var score in scoreMap.values) {
    totalScores += score; // totalScores = totalScores + score
  }

  double avg = totalScores / totalStudents;
  return avg;
}
