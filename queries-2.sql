-- ============================================================
-- EduTrack DB Audit — V2 Queries (normalized schema)
-- Target tables: public.students, public.courses, public.enrollments
-- enrollments stores only student_id and course_id, so these
-- queries JOIN across the three tables.
-- ============================================================


-- ============================================================
-- INNER JOIN
-- ============================================================

-- 1) Every enrollment: student full name, course title, completion %
SELECT s.name AS student_name,
       c.title AS course_title,
       e.completion_percentage
FROM enrollments e
INNER JOIN students s ON s.id = e.student_id
INNER JOIN courses  c ON c.id = e.course_id;

-- 2) Students who passed at least one course, with the passed course title
SELECT s.name, s.email, c.title AS passed_course
FROM enrollments e
INNER JOIN students s ON s.id = e.student_id
INNER JOIN courses  c ON c.id = e.course_id
WHERE e.passed = true;

-- 3) Average completion percentage per instructor, highest to lowest
SELECT c.instructor_name,
       round(avg(e.completion_percentage), 1) AS avg_completion
FROM enrollments e
INNER JOIN courses c ON c.id = e.course_id
GROUP BY c.instructor_name
ORDER BY avg_completion DESC;


-- ============================================================
-- LEFT JOIN (detecting missing data)
-- ============================================================

-- 4) Students with NO enrollments (registered but never signed up)
SELECT s.id, s.name, s.email, s.signup_date
FROM students s
LEFT JOIN enrollments e ON e.student_id = s.id
WHERE e.id IS NULL;

-- 5) Courses with NO enrollments (in catalog but nobody signed up)
SELECT c.id, c.title, c.category, c.instructor_name, c.monthly_fee
FROM courses c
LEFT JOIN enrollments e ON e.course_id = c.id
WHERE e.id IS NULL;


-- ============================================================
-- AGGREGATION ACROSS TABLES
-- ============================================================

-- 6) Courses each student is enrolled in, only those with MORE THAN ONE
SELECT s.name, count(e.course_id) AS course_count
FROM students s
INNER JOIN enrollments e ON e.student_id = s.id
GROUP BY s.id, s.name
HAVING count(e.course_id) > 1
ORDER BY course_count DESC;

-- 7) Total revenue per category using courses.monthly_fee (current price),
--    NOT the historical enrollments.monthly_fee_paid
SELECT c.category, round(sum(c.monthly_fee), 2) AS total_revenue
FROM enrollments e
INNER JOIN courses c ON c.id = e.course_id
GROUP BY c.category
ORDER BY total_revenue DESC;

-- 8) Each instructor with the number of students enrolled in their courses
SELECT c.instructor_name, count(e.student_id) AS enrolled_students
FROM courses c
INNER JOIN enrollments e ON e.course_id = c.id
GROUP BY c.instructor_name
ORDER BY enrolled_students DESC;


-- ============================================================
-- DATA INTEGRITY (orphaned records)
-- ============================================================

-- 9) Enrollments whose student_id matches no student
SELECT e.*
FROM enrollments e
LEFT JOIN students s ON s.id = e.student_id
WHERE s.id IS NULL;

-- 10) Enrollments whose course_id matches no course
SELECT e.*
FROM enrollments e
LEFT JOIN courses c ON c.id = e.course_id
WHERE c.id IS NULL;
