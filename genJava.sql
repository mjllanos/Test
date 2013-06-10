set verify on
set pages 1110
set head off
set lines 1000
set trimspool on
set feed off
set verify off

Begin
	Genjava.model(upper('&&1'),upper('&&2'));
End;
/

define model=varchar2
column cmodel new_value model
select initcap('&&2')||'Servlet.java' cmodel from dual;
spool 'C:\Users\mzvp65\Documents\TSSI\src\&model'
select * from javacode;
spool off
commit;

Begin
	Genjava.controller(upper('&&1'),upper('&&2'));
End;
/

define controller=varchar2
column ccontroller new_value controller
select initcap('&&2')||'.java' ccontroller from dual;
spool 'C:\Users\mzvp65\Documents\TSSI\src\&controller'
select * from javacode;
spool off
commit;

Begin
	Genjava.xml(upper('&&1'),upper('&&2'));
End;
/

define xml=varchar2
column cxml new_value xml
select initcap('&&2')||'.xml' cxml from dual;
spool 'C:\Users\mzvp65\Documents\TSSI\src\&xml'
select * from javacode;
spool off
commit;
