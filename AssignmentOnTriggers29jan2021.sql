use WFA3DotNet

--Create trigger tr_tblEmployee_ForUpdate
--on EmployeeTab
--for Update
--as
--Begin
-- Select * from deleted
-- Select * from inserted 
--End

--select * from EmployeeTab

--select * from PastEmpTable

--Update EmployeeTab set EmpName = 'peter', Salary = 2000  where EmpId = 1




-- Creating the trigger for update record
alter trigger tr_tblEmployee_ForUpdate on EmployeeTab
after update
as 
declare
@empid int,
@ename varchar(20),
@esal float,
@dol datetime
select @empid=inserted.EmpId,@ename=inserted.EmpName,@esal=inserted.Salary,@dol=GETDATE() from inserted

insert into PastEmpTable(empid,ename,esal,dol) values(@empid,@ename,@esal,@dol)
print 'After triggering the update' 

--updating the query
update EmployeeTab set Salary=34000
where empid=4

select * from EmployeeTab

select * from PastEmpTable