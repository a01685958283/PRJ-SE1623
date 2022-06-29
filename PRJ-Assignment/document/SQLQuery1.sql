SELECT s.StudentID,s.StudentName,s.StudentEmail,s.StudentPhoneNumber,g.GroupID,g.GroupName,g.LecturesID,g.CourseID
FROM Student s join StudentGroup sg ON s.StudentID = sg.StudentID join [Group] g ON sg.GroupID = g.GroupID
where g.GroupID = 3


select s.SessionID,s.SessionDate,s.RoomID,s.TimeSlotID,g.GroupID,g.GroupName,g.LecturesID,g.CourseID
from [Session] s join [Group] g ON s.GroupID = g.GroupID 
Where g.LecturesID like 'sonnt5' and s.SessionDate like '2022-05-09'

