-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
select count(*) as number_of_grade_as
from assignments
where grade = 'A'
and teacher_id = (
    select teacher_id
    from assignments
    group by teacher_id
    order by count(*) desc
    limit 1
);