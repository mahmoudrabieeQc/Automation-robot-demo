run all tests in current folder
robot .

 execute all tests in single robot file in current folder
    robot example.robot

execute all tests in single robot file in subfolder 
    robot path/to/example.robot

run with tags
robot --include smoke  .
robot --include regresion  .
robot --i functional
******************************************************
project structure is 
Data  input data varibles
Log to log all transactions xml,html and screenshots
PO dom elements and methods "pom"
common.robot  the initlization of browser
ecommerceApp  the end  to end
Tests 


