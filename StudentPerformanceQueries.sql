
--order by Math Scores
select *
from StudentPerformance.dbo.StudentPerformance
order by 6 desc

--order by Reading Scores
select *
from StudentPerformance.dbo.StudentPerformance
order by 7 desc

--order by Writing Scores
select *
from StudentPerformance.dbo.StudentPerformance
order by 8 desc

--number of male and female math scores greater than 80
select gender, COUNT(*) AS count
from StudentPerformance.dbo.StudentPerformance
where math_score > 80
group by gender
order by count desc

--number of male and female reading scores greater than 80
select gender, COUNT(*) AS count
from StudentPerformance.dbo.StudentPerformance
where reading_score > 80
group by gender
order by count desc

--number of male and female writing scores greater than 80
select gender, COUNT(*) AS count
from StudentPerformance.dbo.StudentPerformance
where writing_score > 80
group by gender
order by count desc

--average of sum of scores for males and females
select gender, AVG(math_score + reading_score + writing_score) AS mean_score
from StudentPerformance..StudentPerformance
group by gender
order by mean_score desc


-- average of all scores for students who completed test prep and students who did not
select test_preparation_course, AVG(math_score + reading_score + writing_score) AS mean_score
from StudentPerformance..StudentPerformance
group by test_preparation_course
order by mean_score desc

--average of all scores for students by parental level of education
select parental_level_of_education, AVG(math_score + reading_score + writing_score) AS mean_score
from StudentPerformance..StudentPerformance
group by parental_level_of_education
order by mean_score desc

