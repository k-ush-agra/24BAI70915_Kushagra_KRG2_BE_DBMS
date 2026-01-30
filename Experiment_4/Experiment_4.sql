--SQL Script: Experiment_4.sql
--Program to demonstrate PL/SQL control structures: IF-ELSE 
DECLARE
    num NUMBER := 5;
BEGIN
    IF num > 0 THEN
    DBMS_output.put_line('The number that is Positive is '|| num);
    ELSE
    DBMS_output.put_line('The number that is Non-Positive is '|| num);
    END IF;
END ;
--PL/SQL block to demonstrate IF-ELSEIF-ELSE statement
DECLARE
    marks NUMBER := 82;
BEGIN
    IF marks >= 90 THEN
    DBMS_OUTPUT.PUT_LINE('Grade : A');
    ELSIF marks >= 75 THEN
    DBMS_OUTPUT.PUT_LINE('Grade : B');
    ELSIF marks >= 60 THEN
    DBMS_OUTPUT.PUT_LINE('Grade : C');
    ELSE
    DBMS_OUTPUT.PUT_LINE('Grade : D');
    END IF;
END;
--PL/SQL block to demonstrate multiple conditions using ELSIF-ladder statement
DECLARE
    marks NUMBER := 68;
    BEGIN
    IF marks >= 85 THEN
    DBMS_OUTPUT.PUT_LINE('Performance : Excellent');
    ELSIF marks >= 70 THEN
    DBMS_OUTPUT.PUT_LINE('Performance : Very Good');
    ELSIF marks >= 55 THEN
    DBMS_OUTPUT.PUT_LINE('Performance : Good');
    ELSIF marks >= 40 THEN
    DBMS_OUTPUT.PUT_LINE('Performance : Average');
    ELSE
    DBMS_OUTPUT.PUT_LINE('Performance : Fail');
    END IF;
END;
--PL/SQL block to demonstrate CASE statement                                                                 
DECLARE
    day_no NUMBER := 3;
BEGIN
    CASE day_no
    WHEN 1 THEN DBMS_OUTPUT.PUT_LINE('Monday');
    WHEN 2 THEN DBMS_OUTPUT.PUT_LINE('Tuesday');
    WHEN 3 THEN DBMS_OUTPUT.PUT_LINE('Wednesday');
    WHEN 4 THEN DBMS_OUTPUT.PUT_LINE('Thursday');
    WHEN 5 THEN DBMS_OUTPUT.PUT_LINE('Friday');
    WHEN 6 THEN DBMS_OUTPUT.PUT_LINE('Saturday');
    WHEN 7 THEN DBMS_OUTPUT.PUT_LINE('Sunday');
    ELSE
    DBMS_OUTPUT.PUT_LINE('Invalid Day Number');
    END CASE;
END;
