
DECLARE 
employee_no O_EMP.EMPNO%TYPE:=&employee_number;
employee_name O_EMP.ENAME%TYPE;
job_type emp.JOB%TYPE;
no_emp NUMBER(9);
 
BEGIN
SELECT ENAME,JOB,(SELECT COUNT(EMPNO)
                  FROM  O_EMP 
				  WHERE  MGR=employee_no)
INTO employee_name,job_type ,no_emp 
FROM O_EMP 
WHERE EMPNO=employee_no;
DBMS_OUTPUT.PUT_LINE(employee_name||'('||job_type||') supervises '|| no_emp || ' employee(s)');
END;
