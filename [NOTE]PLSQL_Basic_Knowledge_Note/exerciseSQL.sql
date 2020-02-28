create or replace procedure rzy3
(
	p_dno	dept.deptno%type,
	p_dna	dept.dname%type,
	p_dlo	dept.loc%type
)
as
	v_deptcount number
begin
	select count(deptno) into v_deptcount from dept
	where deptno=p_dno;
	if	v_deptcount>0 then
		raise_application_error(-20789,'����ʧ��:�ò����Ѿ�����!');
	else
		insert into dept(deptno,dname,loc) values(p_dno,p_dna,p_dlo);
		dbms_output.put_line('��ӳɹ�!');
		commit;
	end if;
exception
	when others then
		dbms_output.put_line('SQLERRM='||sqlerrm);
		rollback;
end;
/
create or replace procedure rzy4(a out varchar2,b out varchar2)
as
begin
	dbms_output.put_line('a = '||a);
	dbms_output.put_line('b = '||b);
	a:='Hello';
	b:='World';
end;
--
declare
    m       varchar2(100):='123';
    n       varchar2(100):='321';
begin
	rzy4(m,n);
	dbms_output.put_line('m�� = '||m);
	dbms_output.put_line('n�� = '||n);
end;
--
create or replace 



















































































































