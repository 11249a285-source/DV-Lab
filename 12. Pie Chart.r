AIM: To analyze the distribution of A-grade students in Mathematics, Science, and English using a pie chart.

ALGORITHM:
1.Create the student dataset.
2.Calculate the number of students who scored 85 or above in each subject.
3.Store the A-grade counts in a vector.
4.Generate a pie chart using the pie() function.
5.Assign different colors to each subject.
6.Add a title and labels displaying the subject names and number of students.

PROGRAM:
students <- data.frame(
  Student = c("Alice", "Bob", "Charlie", "Diana", "Eve",
              "Frank", "Grace", "Henry", "Ivy", "Jack"),
  Math = c(88, 72, 91, 65, 78, 85, 60, 95, 70, 83),
  Science = c(76, 85, 88, 70, 92, 79, 68, 90, 74, 80),
  English = c(82, 68, 75, 80, 70, 88, 72, 85, 77, 79),
  Hours = c(5.0, 4.0, 6.0, 3.0, 7.0,
            5.5, 3.5, 7.0, 4.0, 5.0)
)

a_grades <- c(
  Math = sum(students$Math >= 85),
  Science = sum(students$Science >= 85),
  English = sum(students$English >= 85)
)

pie(
  a_grades,
  main = "A-Grade Distribution by Subject",
  col = c("#3498db", "#2ecc71", "#e74c3c"),
  labels = paste(
    names(a_grades),
    "\n",
    a_grades,
    "students"
  )
)

RESULT:
The pie chart was successfully generated to represent the distribution of A-grade students in Mathematics, Science, and English. Different colors and labels were used to distinguish the subjects and display the number of students in each subject.
