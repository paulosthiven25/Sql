DECLARE 
  
    V_LAST_NAME EMPLOYEES.LAST_NAME%TYPE:='King';
    V_DEP_NAME DEPARTMENTS.DEPARTMENT_NAME%TYPE;
    

BEGIN
    SELECT LAST_NAME,DEPARTMENT_NAME
    INTO V_LAST_NAME,V_DEP_NAME
    FROM EMPLOYEES E JOIN DEPARTMENTS D 
    ON(D.DEPARTMENT_ID=E.DEPARTMENT_ID)
    WHERE LAST_NAME= V_LAST_NAME;
    
    DBMS_OUTPUT.put_line(V_LAST_NAME||' '||V_DEP_NAME);
END;
/