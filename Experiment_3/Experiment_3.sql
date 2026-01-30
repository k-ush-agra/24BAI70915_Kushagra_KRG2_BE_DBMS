DECLARE
    emp_id      NUMBER := 101;
    emp_name    VARCHAR2(50) := 'Amit Sharma';
    emp_salary  NUMBER := 45000;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Employee Details');
    DBMS_OUTPUT.PUT_LINE('----------------');
    DBMS_OUTPUT.PUT_LINE('Employee ID    : ' || emp_id);
    DBMS_OUTPUT.PUT_LINE('Employee Name  : ' || emp_name);
    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || emp_salary);
    DBMS_OUTPUT.PUT_LINE('Kushagra Vashistha 24BAI70915');
END;