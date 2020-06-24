@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist D:\Program\xampp_osjs\hypersonic\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\server\hsql-sample-database\scripts\ctl.bat START)
if exist D:\Program\xampp_osjs\ingres\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\ingres\scripts\ctl.bat START)
if exist D:\Program\xampp_osjs\mysql\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\mysql\scripts\ctl.bat START)
if exist D:\Program\xampp_osjs\postgresql\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\postgresql\scripts\ctl.bat START)
if exist D:\Program\xampp_osjs\apache\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\apache\scripts\ctl.bat START)
if exist D:\Program\xampp_osjs\openoffice\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\openoffice\scripts\ctl.bat START)
if exist D:\Program\xampp_osjs\apache-tomcat\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\apache-tomcat\scripts\ctl.bat START)
if exist D:\Program\xampp_osjs\resin\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\resin\scripts\ctl.bat START)
if exist D:\Program\xampp_osjs\jetty\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\jetty\scripts\ctl.bat START)
if exist D:\Program\xampp_osjs\subversion\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist D:\Program\xampp_osjs\lucene\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\lucene\scripts\ctl.bat START)
if exist D:\Program\xampp_osjs\third_application\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist D:\Program\xampp_osjs\third_application\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\third_application\scripts\ctl.bat STOP)
if exist D:\Program\xampp_osjs\lucene\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist D:\Program\xampp_osjs\subversion\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\subversion\scripts\ctl.bat STOP)
if exist D:\Program\xampp_osjs\jetty\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\jetty\scripts\ctl.bat STOP)
if exist D:\Program\xampp_osjs\hypersonic\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist D:\Program\xampp_osjs\resin\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\resin\scripts\ctl.bat STOP)
if exist D:\Program\xampp_osjs\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT D:\Program\xampp_osjs\apache-tomcat\scripts\ctl.bat STOP)
if exist D:\Program\xampp_osjs\openoffice\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\openoffice\scripts\ctl.bat STOP)
if exist D:\Program\xampp_osjs\apache\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\apache\scripts\ctl.bat STOP)
if exist D:\Program\xampp_osjs\ingres\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\ingres\scripts\ctl.bat STOP)
if exist D:\Program\xampp_osjs\mysql\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\mysql\scripts\ctl.bat STOP)
if exist D:\Program\xampp_osjs\postgresql\scripts\ctl.bat (start /MIN /B D:\Program\xampp_osjs\postgresql\scripts\ctl.bat STOP)

:end

