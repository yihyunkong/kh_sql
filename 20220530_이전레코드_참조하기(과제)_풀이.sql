<<<<<<< HEAD
-- 2001�� 9�� 1�� ���� 2001�� 9�� 11�� ������ ȯ�� �ݾ��� ������ �ִ�. ȯ�� �ݾ��� CDATE�� ����Ǿ��ִ�.
-- �Ϸ� ���� ��¥�� ������ �Է��� ����. 

-- �츮 ȸ���� ���ǥ�� 2001�� 9�� 3�Ͽ� ��ȭ�� �󸶸� �غ��ؾ� ������ �����ұ�?

select 
         rownum rno, cdate, amt
 from test02
 
select
         rownum cno, cdate, crate
 from test02
 
 
select 
         *
 from (
            select 
                     rownum rno, cdate, amt
             from test02
         ) a,
         (
            select
                     rownum cno, cdate, crate
             from test02
         ) b
where a.rno - 1 = b.cno

select 
         a.cdate, a.amt, a.amt*b.crate
 from (
            select 
                     rownum rno, cdate, amt
             from test02
         ) a,
         (
            select
                     rownum cno, cdate, crate
             from test02
         ) b
where a.rno - 1 = b.cno



select 
         a.cdate, a.amt, to_char(a.amt*b.crate '999,999,999,999') || '��' as "��ȭ�ݾ�"
 from (
            select 
                     rownum rno, cdate, amt
             from test02
         ) a,
         (
            select
                     rownum cno, cdate, crate
             from test02
         ) b
=======
-- 2001�� 9�� 1�� ���� 2001�� 9�� 11�� ������ ȯ�� �ݾ��� ������ �ִ�. ȯ�� �ݾ��� CDATE�� ����Ǿ��ִ�.
-- �Ϸ� ���� ��¥�� ������ �Է��� ����. 

-- �츮 ȸ���� ���ǥ�� 2001�� 9�� 3�Ͽ� ��ȭ�� �󸶸� �غ��ؾ� ������ �����ұ�?

select 
         rownum rno, cdate, amt
 from test02
 
select
         rownum cno, cdate, crate
 from test02
 
 
select 
         *
 from (
            select 
                     rownum rno, cdate, amt
             from test02
         ) a,
         (
            select
                     rownum cno, cdate, crate
             from test02
         ) b
where a.rno - 1 = b.cno

select 
         a.cdate, a.amt, a.amt*b.crate
 from (
            select 
                     rownum rno, cdate, amt
             from test02
         ) a,
         (
            select
                     rownum cno, cdate, crate
             from test02
         ) b
where a.rno - 1 = b.cno



select 
         a.cdate, a.amt, to_char(a.amt*b.crate '999,999,999,999') || '��' as "��ȭ�ݾ�"
 from (
            select 
                     rownum rno, cdate, amt
             from test02
         ) a,
         (
            select
                     rownum cno, cdate, crate
             from test02
         ) b
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
where a.rno - 1 = b.cno