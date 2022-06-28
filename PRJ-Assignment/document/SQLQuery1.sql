SELECT s.StudentID,s.StudentName,s.StudentEmail,s.StudentPhoneNumber,g.GroupID,g.GroupName,g.LecturesID,g.CourseID
FROM Student s join StudentGroup sg ON s.StudentID = sg.StudentID join [Group] g ON sg.GroupID = g.GroupID


/*
  INSERT INTO  dữ liệu trả về từ thẻ input 
           ([StudentID]
           ,[SessionID]
           ,[Status]          
           ,[Comment]  
           ,[Record Time])
     VALUES
           (?,?,?,?,?)
*/


