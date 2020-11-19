use practice_schema;

select student_student_id, max(grade)
from grade
group by student_student_id;