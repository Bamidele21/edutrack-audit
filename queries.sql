-- ============================================================
-- EduTrack DB Audit Queries
-- Target tables: public.students, public.courses, public.enrollments
-- (enrollments is denormalized: student_name, course_title,
--  category and instructor live directly on the table.)
-- ============================================================


-- ============================================================
-- READING AND FILTERING
-- ============================================================

-- 1) All enrollments for 'Intro to Python' (student name, email, completion)
SELECT student_name, student_email, completion_percentage
FROM  enrollments
WHERE course_title = 'Intro to Python';

-- 2) Potential dropouts: completion below 10%
SELECT *
FROM enrollments
WHERE completion_percentage < 10;

-- 3) Enrollments with no instructor assigned
SELECT *
FROM enrollments
WHERE instructor IS NULL;

-- 4) Top 5 students by completion who have NOT passed yet
SELECT *
FROM  enrollments
WHERE passed = false
ORDER BY completion_percentage DESC
LIMIT 5;

-- 5) Enrollments created in the last year, newest first
SELECT *
FROM enrollments
WHERE enrollment_date >= '2024-01-01'
  AND enrollment_date <  '2025-01-01'
ORDER BY enrollment_date DESC;


-- ============================================================
-- DATA CORRECTIONS
-- ============================================================

-- 6) INSERT the missing enrollment record from the brief
 INSERT INTO enrollments (
    id,
    student_id,
    student_name,
    student_email,
    course_id,
    course_title,
    category,
    enrollment_date,
    completion_percentage,
    passed,
    monthly_fee_paid,
    instructor
)
VALUES (
    18,
    3,
    'Lucia Fernandes',
    'lucia.fernandes@student.edutrack.com',
    5,
    'Advanced Python',
    'Programming',
    '2025-04-01',
    0,
    FALSE,
    69.99,
    'Carlos Vega'
)

-- 7) Assign the default value to enrollments with no instructor
UPDATE enrollments
SET instructor = 'Pending assignment'
WHERE instructor IS NULL;

-- 8) Confirm affected rows before deleting test-account enrollments
SELECT *
FROM  enrollments
WHERE student_email LIKE '%@test.com';

-- 8b) Delete all enrollments tied to test accounts
DELETE FROM enrollments
WHERE student_email LIKE '%@test.com';


-- ============================================================
-- AGGREGATION AND REPORTING
-- ============================================================

-- 9) Count of enrollments grouped by category
SELECT category, count(*) AS enrollments
FROM enrollments
GROUP BY category
ORDER BY enrollments DESC;

-- 10) Average completion grouped by course, lowest to highest
SELECT course_title, round(avg(completion_percentage), 1) AS avg_completion
FROM enrollments
GROUP BY course_title
ORDER BY avg_completion ASC;

-- 11) Courses with more than 3 enrollments
SELECT course_title, count(*) AS enrollments
FROM enrollments
GROUP BY course_title
HAVING count(*) > 3
ORDER BY enrollments DESC;
-- 12) Total revenue (sum of monthly_fee_paid) grouped by category
SELECT category, round(sum(monthly_fee_paid), 2) AS total_revenue
FROM enrollments
GROUP BY category
ORDER BY total_revenue DESC;


