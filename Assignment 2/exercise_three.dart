final scores = [89, 77, 46, 93, 82, 67, 32, 88];

final highestGrade = scores.sort();

final bGrades = scores.where((score) => score >= 80 && score <= 90);
