1. Enrollments in "Intro to Python


Results = 5

| id | student_id | student_name | student_email                     | course_id | course_title    | category    | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor  |
| -- | ---------- | ------------ | --------------------------------- | --------- | --------------- | ----------- | --------------- | --------------------- | ------ | ---------------- | ----------- |
| 1  | 1          | Emily Watson | emily.watson@student.edutrack.com | 1         | Intro to Python | Programming | 2024-03-10      | 85                    | true   | 49.99            | Marta López |
| 3  | 2          | Klaus Weber  | klaus.weber@student.edutrack.com  | 1         | Intro to Python | Programming | 2024-03-12      | 92                    | true   | 49.99            | Marta López |
| 8  | 4          | Marco Rossi  | marco.rossi@student.edutrack.com  | 1         | Intro to Python | Programming | 2024-08-09      | 88                    | true   | 49.99            | Marta López |
| 13 | 8          | James Miller | james.miller@test.com             | 1         | Intro to Python | Programming | 2024-05-22      | 30                    | false  | 49.99            | Marta López |
| 15 | 7          | Priya Sharma | priya.sharma@student.edutrack.com | 1         | Intro to Python | Programming | 2025-01-10      | 55                    | false  | 49.99            | Marta López |



2. Enrollments where the completion percentage is less then 10%

results = 4

| id | student_id | student_name    | student_email                        | course_id | course_title          | category  | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor   |
| -- | ---------- | --------------- | ------------------------------------ | --------- | --------------------- | --------- | --------------- | --------------------- | ------ | ---------------- | ------------ |
| 5  | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 2         | Web Design Basics     | Design    | 2024-06-20      | 5                     | false  | 39.99            | Carlos Vega  |
| 6  | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 4         | Digital Marketing 101 | Marketing | 2024-07-01      | 3                     | false  | 29.99            | Lucia Prades |
| 10 | 5          | Yuki Nakamura   | yuki.nakamura@student.edutrack.com   | 6         | UI/UX Fundamentals    | Design    | 2024-10-11      | 0                     | false  | 44.99            | null         |
| 11 | 6          | Pierre Dubois   | pierre.dubois@student.edutrack.com   | 6         | UI/UX Fundamentals    | Design    | 2024-11-05      | 0                     | false  | 44.99            | null         |


3. enrollments where the instructor field was NULL

result = 2 

| id | student_id | student_name  | student_email                      | course_id | course_title       | category | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor |
| -- | ---------- | ------------- | ---------------------------------- | --------- | ------------------ | -------- | --------------- | --------------------- | ------ | ---------------- | ---------- |
| 10 | 5          | Yuki Nakamura | yuki.nakamura@student.edutrack.com | 6         | UI/UX Fundamentals | Design   | 2024-10-11      | 0                     | false  | 44.99            | null       |
| 11 | 6          | Pierre Dubois | pierre.dubois@student.edutrack.com | 6         | UI/UX Fundamentals | Design   | 2024-11-05      | 0                     | false  | 44.99            | null       |


4. List the 5 students with teh highest completion_percentage who have not passed (passed = false)

results = 5

| id | student_id | student_name  | student_email                      | course_id | course_title           | category    | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor  |
| -- | ---------- | ------------- | ---------------------------------- | --------- | ---------------------- | ----------- | --------------- | --------------------- | ------ | ---------------- | ----------- |
| 2  | 1          | Emily Watson  | emily.watson@student.edutrack.com  | 2         | Web Design Basics      | Design      | 2024-04-15      | 60                    | false  | 39.99            | Carlos Vega |
| 15 | 7          | Priya Sharma  | priya.sharma@student.edutrack.com  | 1         | Intro to Python        | Programming | 2025-01-10      | 55                    | false  | 49.99            | Marta López |
| 9  | 5          | Yuki Nakamura | yuki.nakamura@student.edutrack.com | 3         | Data Analysis with SQL | Data        | 2024-09-03      | 45                    | false  | 59.99            | Marta López |
| 17 | 1          | Emily Watson  | emily.watson@student.edutrack.com  | 5         | Advanced Python        | Programming | 2025-03-05      | 40                    | false  | 69.99            | Carlos Vega |
| 16 | 6          | Pierre Dubois | pierre.dubois@student.edutrack.com | 3         | Data Analysis with SQL | Data        | 2025-02-20      | 20                    | false  | 59.99            | Marta López |




5. Enrollments for students in last year (2024) in  descending order of enrollment date 

results = 11


| id | student_id | student_name    | student_email                        | course_id | course_title           | category    | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor   |
| -- | ---------- | --------------- | ------------------------------------ | --------- | ---------------------- | ----------- | --------------- | --------------------- | ------ | ---------------- | ------------ |
| 9  | 5          | Yuki Nakamura   | yuki.nakamura@student.edutrack.com   | 3         | Data Analysis with SQL | Data        | 2024-09-03      | 45                    | false  | 59.99            | Marta López  |
| 8  | 4          | Marco Rossi     | marco.rossi@student.edutrack.com     | 1         | Intro to Python        | Programming | 2024-08-09      | 88                    | true   | 49.99            | Marta López  |
| 6  | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 4         | Digital Marketing 101  | Marketing   | 2024-07-01      | 3                     | false  | 29.99            | Lucia Prades |
| 14 | 9          | Alex Chen       | alex.chen@test.com                   | 2         | Web Design Basics      | Design      | 2024-06-30      | 10                    | false  | 39.99            | Carlos Vega  |
| 5  | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 2         | Web Design Basics      | Design      | 2024-06-20      | 5                     | false  | 39.99            | Carlos Vega  |
| 13 | 8          | James Miller    | james.miller@test.com                | 1         | Intro to Python        | Programming | 2024-05-22      | 30                    | false  | 49.99            | Marta López  |
| 4  | 2          | Klaus Weber     | klaus.weber@student.edutrack.com     | 3         | Data Analysis with SQL | Data        | 2024-05-01      | 78                    | true   | 59.99            | Marta López  |
| 2  | 1          | Emily Watson    | emily.watson@student.edutrack.com    | 2         | Web Design Basics      | Design      | 2024-04-15      | 60                    | false  | 39.99            | Carlos Vega  |
| 3  | 2          | Klaus Weber     | klaus.weber@student.edutrack.com     | 1         | Intro to Python        | Programming | 2024-03-12      | 92                    | true   | 49.99            | Marta López  |
| 1  | 1          | Emily Watson    | emily.watson@student.edutrack.com    | 1         | Intro to Python        | Programming | 2024-03-10      | 85                    | true   | 49.99            | Marta López  |
| 7  | 4          | Marco Rossi     | marco.rossi@student.edutrack.com     | 5         | Advanced Python        | Programming | 2024-02-14      | 95                    | true   | 69.99            | Carlos Vega  |


6. insert missing student recorded detailed in the brief

result = 3

| id | student_id | student_name    | student_email                        | course_id | course_title          | category    | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor   |
| -- | ---------- | --------------- | ------------------------------------ | --------- | --------------------- | ----------- | --------------- | --------------------- | ------ | ---------------- | ------------ |
| 5  | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 2         | Web Design Basics     | Design      | 2024-06-20      | 5                     | false  | 39.99            | Carlos Vega  |
| 6  | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 4         | Digital Marketing 101 | Marketing   | 2024-07-01      | 3                     | false  | 29.99            | Lucia Prades |
| 18 | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 5         | Advanced Python       | Programming | 2025-04-01      | 0                     | false  | 69.99            | Carlos Vega  |

7. update all enrollments where instructor is null to assignment pending 

result = 2 

| id | student_id | student_name  | student_email                      | course_id | course_title       | category | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor         |
| -- | ---------- | ------------- | ---------------------------------- | --------- | ------------------ | -------- | --------------- | --------------------- | ------ | ---------------- | ------------------ |
| 10 | 5          | Yuki Nakamura | yuki.nakamura@student.edutrack.com | 6         | UI/UX Fundamentals | Design   | 2024-10-11      | 0                     | false  | 44.99            | Assignment Pending |
| 11 | 6          | Pierre Dubois | pierre.dubois@student.edutrack.com | 6         | UI/UX Fundamentals | Design   | 2024-11-05      | 0                     | false  | 44.99            | Assignment Pending |



8.  delete all enrollments tied to test accounts 

number of enrollments deleted = 2


9.  count the number of enrollments grouped by 'category'

result = 

'Programming' = 7 'Design = 4 'Data' = 3 'Marketing' = 2

10. Calculate the average `completion_percentage` grouped by `course_title`, ordered from lowest to highest

result =

 UI/UX Fundamentals = 0.0%
 Web Design Basics = 32.5%
 Digital Marketing 101 = 36.5%
 Advance Python = 45.0%
 Data Analysis SQL = 47.7%
 Intro to Python = 80.0%


11. Show courses with more than 3 enrollments 

result = 1 
| course_title    | enrollments |
| --------------- | ----------- |
| Intro to Python | 4           |


12.  Calculate total revenue grouped by category, ordered from highest to lowest

results =

 1 Programming = 409.93  2. Data = 179.97  3. Design = 169.96 44. Marketing = 59.98