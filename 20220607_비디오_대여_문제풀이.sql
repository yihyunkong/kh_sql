<<<<<<< HEAD
select * from hd_video_member_t -- ��ϵ� ��� >> �뿩�� ����� �̸��� ��Ϲ�ȣ ã��

select * from hd_video_loan_mast_t -- �뿩 ���� >> �뿩�� ����� ��Ϲ�ȣ�� ��¥

select * from hd_video_loan_detail_t -- �뿩 �� ���� >>  �뿩 ��ȣ ã��

select * from hd_video_t -- ���� ����Ʈ >> �뿩�� ���� ��ȣ ã��

select * from hd_movie_t -- ��ȭ ����Ʈ >> �뿩�� ��ȣ�� ��ȭ ��ȣ�� ã�Ƽ� ��ȭ �̸��� �˾ƺ���

���� ���� � ������ �뿩�ߴ��� �˰�ʹ�.
���� �̹ݳ� �����̸� ��ȭ�� �ɾ �ݳ��� ��û�ؾ� �Ѵٸ�
� ���յ��� �ʿ����� �����.

--ȸ���̸��� ȸ�� ��ȣ�� �׸��� ȸ�� ��ȭ��ȣ
select mem_cd, mem_name, mem_tel from hd_video_member_t

--����, � ȸ����ȣ? � �뿩��ȣ?
select * from hd_video_loan_mast_t

-- �뿩��ȣ, � ���� ��ȣ?
select loan_no, video_cd from hd_video_loan_detail_t

-- ���� ��ȣ�� ��ȭ ��ȣ�� �� �� �ִ�.
select video_cd, movie_cd from hd_video_t 

-- ��ȭ��ȣ�� ��ȭ�̸� ã��
select movie_cd, movie_name from hd_movie_t

---------------------------------------------------------------------------------------------
select 
         vm.loan_no as "�뿩��ȣ"
        ,vm.loan_date as "�뿩����"
        ,mem.mem_name as "ȸ���ڵ�"
        ,mem.mem_tel as "��ȭ��ȣ"
        ,vd.video_cd as "������ȣ"
        ,vi.movie_cd as "��ȭ��ȣ"
        ,mo.movie_name as "��ȭ�̸�"
 from hd_video_loan_mast_t vm 
        ,hd_video_loan_detail_t vd
        ,hd_video_member_t mem
        ,hd_video_t vi
        ,hd_movie_t mo
where vm.loan_no = vd.loan_no
   and vm.mem_cd = mem.mem_cd
   and vi.movie_cd = mo.movie_cd
   
   
 

=======
select * from hd_video_member_t -- ��ϵ� ��� >> �뿩�� ����� �̸��� ��Ϲ�ȣ ã��

select * from hd_video_loan_mast_t -- �뿩 ���� >> �뿩�� ����� ��Ϲ�ȣ�� ��¥

select * from hd_video_loan_detail_t -- �뿩 �� ���� >>  �뿩 ��ȣ ã��

select * from hd_video_t -- ���� ����Ʈ >> �뿩�� ���� ��ȣ ã��

select * from hd_movie_t -- ��ȭ ����Ʈ >> �뿩�� ��ȣ�� ��ȭ ��ȣ�� ã�Ƽ� ��ȭ �̸��� �˾ƺ���

���� ���� � ������ �뿩�ߴ��� �˰�ʹ�.
���� �̹ݳ� �����̸� ��ȭ�� �ɾ �ݳ��� ��û�ؾ� �Ѵٸ�
� ���յ��� �ʿ����� �����.

--ȸ���̸��� ȸ�� ��ȣ�� �׸��� ȸ�� ��ȭ��ȣ
select mem_cd, mem_name, mem_tel from hd_video_member_t

--����, � ȸ����ȣ? � �뿩��ȣ?
select * from hd_video_loan_mast_t

-- �뿩��ȣ, � ���� ��ȣ?
select loan_no, video_cd from hd_video_loan_detail_t

-- ���� ��ȣ�� ��ȭ ��ȣ�� �� �� �ִ�.
select video_cd, movie_cd from hd_video_t 

-- ��ȭ��ȣ�� ��ȭ�̸� ã��
select movie_cd, movie_name from hd_movie_t

---------------------------------------------------------------------------------------------
select 
         vm.loan_no as "�뿩��ȣ"
        ,vm.loan_date as "�뿩����"
        ,mem.mem_name as "ȸ���ڵ�"
        ,mem.mem_tel as "��ȭ��ȣ"
        ,vd.video_cd as "������ȣ"
        ,vi.movie_cd as "��ȭ��ȣ"
        ,mo.movie_name as "��ȭ�̸�"
 from hd_video_loan_mast_t vm 
        ,hd_video_loan_detail_t vd
        ,hd_video_member_t mem
        ,hd_video_t vi
        ,hd_movie_t mo
where vm.loan_no = vd.loan_no
   and vm.mem_cd = mem.mem_cd
   and vi.movie_cd = mo.movie_cd
   
   
 

>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
