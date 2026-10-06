1. List every enrollment showing the student's full name, the course title, and their completion percentage

results = 16

| student_name    | course_title           | completion_percentage |
| --------------- | ---------------------- | --------------------- |
| Emily Watson    | Intro to Python        | 85                    |
| Emily Watson    | Web Design Basics      | 60                    |
| Klaus Weber     | Intro to Python        | 92                    |
| Klaus Weber     | Data Analysis with SQL | 78                    |
| Lucia Fernandes | Web Design Basics      | 5                     |
| Lucia Fernandes | Digital Marketing 101  | 3                     |
| Marco Rossi     | Advanced Python        | 95                    |
| Marco Rossi     | Intro to Python        | 88                    |
| Yuki Nakamura   | Data Analysis with SQL | 45                    |
| Yuki Nakamura   | UI/UX Fundamentals     | 0                     |
| Pierre Dubois   | UI/UX Fundamentals     | 0                     |
| Priya Sharma    | Digital Marketing 101  | 70                    |
| Priya Sharma    | Intro to Python        | 55                    |
| Pierre Dubois   | Data Analysis with SQL | 20                    |
| Emily Watson    | Advanced Python        | 40                    |
| Lucia Fernandes | Advanced Python        | 0                     |

2. Show the name and email of students that have passed at least one class along with the title of the coursse they passed.

Results = 4 

Emily Watson email = emily.watson@student.edutrack.com  classes passed = 1 course titles = Intro to Python

Klaus Weber email = klaus.weber@student.edutrack.com classes passed = 2  course titles = Intro to Python, Data Anylysis with SQL

Marco Rossi email = marco.rossi@student.edutrack.com classes passed = 2 course titles = Advanced Python, Intro to Python

Priy Sharma email = priya.shaarma@student.edutrack.com classes passed = 1, course titles = Digital Marketing 101

3. Caculate the average completion percentage per instructor ordered from highest to lowest. 

results = 4

| instructor_name    | avg_completion |
| ------------------ | -------------- |
| Marta López        | 66.1           |
| Carlos Vega        | 40.0           |
| Lucia Prades       | 36.5           |

4. Find all students who have **no enrollments** — they registered on the platform but never signed up for a course

result = 1

Giuilia Romano


5. Find all courses that have **no enrollments** — they exist in the catalog but no one has signed up

results = 1 

course title = Email Campaigns

6. Count how many courses each student is enrolled in; show only students enrolled in **more than one course**

result = 7 

| name            | course_count |
| --------------- | ------------ |
| Lucia Fernandes | 3            |
| Emily Watson    | 3            |
| Marco Rossi     | 2            |
| Klaus Weber     | 2            |
| Priya Sharma    | 2            |
| Pierre Dubois   | 2            |
| Yuki Nakamura   | 2            |

7. Calculate total revenue per category using the course price from the `courses` table (`monthly_fee`), not the historical payment in `enrollments`

| category    | total_revenue |
| ----------- | ------------- |
| Programming | 409.93        |
| Data        | 179.97        |
| Design      | 169.96        |
| Marketing   | 59.98         |


8. Show each instructor alongside the number of students currently enrolled in their courses

| instructor_name    | enrolled_students |
| ------------------ | ----------------- |
| Marta López        | 7                 |
| Carlos Vega        | 5                 |
| Lucia Prades       | 2                 |

9. Check for enrollments where the `student_id` does not match any existing student (orphaned records)

results = none 

10. Check for enrollments where the `course_id` does not match any existing course (orphaned records)

results = none 