create database Assesment
use Assesment
create table Students (
    Student_Id int primary key,
    Name varchar(20),
    Country varchar(50),
    Registration_Date date
);

create table Courses (
    Course_Id int primary key,
    Title varchar(50),
    Subject varchar(50),
    Level varchar(20)
);

create table Enrollments (
    Student_Id int,
    Course_Id int,
    Enrollment_Date date,
    foreign key (Student_Id) references Students(Student_Id),
    foreign key (Course_Id) references Courses(Course_Id)
);

create table Progress (
    Student_Id int,
    Course_Id int,
    Completed_Percent int,
    Last_Accessed date,
    foreign key (Student_Id) references Students(Student_Id),
    foreign key (Course_Id) references Courses(Course_Id)
);

insert into Students 
values (1, 'Preksha', 'USA', '2025-01-10'),
(2, 'Dhruvi', 'India', '2025-02-15'),
(3, 'Dhairya', 'UK', '2025-03-01'),
(4, 'Naiya', 'Canada', '2025-03-20'),
(5, 'Shila', 'Australia', '2025-04-05');

insert into Courses 
values (101, 'SQL Basics', 'Database', 'Beginner'),
(102, 'Advanced SQL', 'Database', 'Intermediate'),
(103, 'Python Fundamentals', 'Programming', 'Beginner'),
(104, 'PHP', 'Programming', 'Intermediate'),
(105, 'Machine Learning Intro', 'AI', 'Beginner');

insert into Enrollments 
values (1, 101, '2025-04-01'),
(1, 103, '2025-04-05'),
(2, 101, '2025-04-03'),
(2, 102, '2025-04-10'),
(3, 103, '2025-04-12');

insert into Progress 
values (1, 101, 90, '2025-07-01'),
(1, 103, 85, '2025-07-02'),
(2, 101, 60, '2025-05-01'),
(2, 102, 88, '2025-07-05'),
(3, 103, 92, '2025-07-06');

-- 1. Find the most popular course per subject (by enrollments).


-- 2. List students who completed more than 80% in at least 3 courses.
select s.Student_Id, s.name from Students s join Progress p on s.Student_Id = p.Student_Id
where p.Completed_Percent > 80 group by s.Student_Id, s.name having COUNT(p.Course_Id) >= 3;

-- 3. Calculate average course completion by level (e.g., beginner, intermediate).
select c.Level, AVG(p.Completed_Percent) as Avg_Completion from Courses c join Progress p 
on c.Course_Id = p.Course_Id group by c.Level;

-- 4. Identify students inactive for more than 60 days.


-- 5. Determine the subject with the highest average completion rate.
select Subject, AVG(Completed_Percent) AS Avg_Completion from Courses c join Progress p 
ON c.Course_Id = p.Course_Id group by Subject order by Avg_Completion DESC LIMIT 1;
