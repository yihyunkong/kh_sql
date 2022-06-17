<<<<<<< HEAD
select * from hd_video_member_t -- 등록된 멤버 >> 대여한 멤버의 이름과 등록번호 찾기

select * from hd_video_loan_mast_t -- 대여 대장 >> 대여한 멤버의 등록번호와 날짜

select * from hd_video_loan_detail_t -- 대여 상세 내역 >>  대여 번호 찾기

select * from hd_video_t -- 비디오 리스트 >> 대여한 비디오 번호 찾기

select * from hd_movie_t -- 영화 리스트 >> 대여한 번호로 영화 번호를 찾아서 영화 이름을 알아보기

누가 언제 어떤 비디오를 대여했는지 알고싶다.
만일 미반납 상태이면 전화를 걸어서 반납을 요청해야 한다면
어떤 집합들이 필요할지 적어보자.

--회원이름과 회원 번호를 그리고 회원 전화번호
select mem_cd, mem_name, mem_tel from hd_video_member_t

--언제, 어떤 회원번호? 어떤 대여번호?
select * from hd_video_loan_mast_t

-- 대여번호, 어떤 비디오 번호?
select loan_no, video_cd from hd_video_loan_detail_t

-- 비디오 번호로 영화 번호를 알 수 있다.
select video_cd, movie_cd from hd_video_t 

-- 영화번호로 영화이름 찾기
select movie_cd, movie_name from hd_movie_t

---------------------------------------------------------------------------------------------
select 
         vm.loan_no as "대여번호"
        ,vm.loan_date as "대여일자"
        ,mem.mem_name as "회원코드"
        ,mem.mem_tel as "전화번호"
        ,vd.video_cd as "비디오번호"
        ,vi.movie_cd as "영화번호"
        ,mo.movie_name as "영화이름"
 from hd_video_loan_mast_t vm 
        ,hd_video_loan_detail_t vd
        ,hd_video_member_t mem
        ,hd_video_t vi
        ,hd_movie_t mo
where vm.loan_no = vd.loan_no
   and vm.mem_cd = mem.mem_cd
   and vi.movie_cd = mo.movie_cd
   
   
 

=======
select * from hd_video_member_t -- 등록된 멤버 >> 대여한 멤버의 이름과 등록번호 찾기

select * from hd_video_loan_mast_t -- 대여 대장 >> 대여한 멤버의 등록번호와 날짜

select * from hd_video_loan_detail_t -- 대여 상세 내역 >>  대여 번호 찾기

select * from hd_video_t -- 비디오 리스트 >> 대여한 비디오 번호 찾기

select * from hd_movie_t -- 영화 리스트 >> 대여한 번호로 영화 번호를 찾아서 영화 이름을 알아보기

누가 언제 어떤 비디오를 대여했는지 알고싶다.
만일 미반납 상태이면 전화를 걸어서 반납을 요청해야 한다면
어떤 집합들이 필요할지 적어보자.

--회원이름과 회원 번호를 그리고 회원 전화번호
select mem_cd, mem_name, mem_tel from hd_video_member_t

--언제, 어떤 회원번호? 어떤 대여번호?
select * from hd_video_loan_mast_t

-- 대여번호, 어떤 비디오 번호?
select loan_no, video_cd from hd_video_loan_detail_t

-- 비디오 번호로 영화 번호를 알 수 있다.
select video_cd, movie_cd from hd_video_t 

-- 영화번호로 영화이름 찾기
select movie_cd, movie_name from hd_movie_t

---------------------------------------------------------------------------------------------
select 
         vm.loan_no as "대여번호"
        ,vm.loan_date as "대여일자"
        ,mem.mem_name as "회원코드"
        ,mem.mem_tel as "전화번호"
        ,vd.video_cd as "비디오번호"
        ,vi.movie_cd as "영화번호"
        ,mo.movie_name as "영화이름"
 from hd_video_loan_mast_t vm 
        ,hd_video_loan_detail_t vd
        ,hd_video_member_t mem
        ,hd_video_t vi
        ,hd_movie_t mo
where vm.loan_no = vd.loan_no
   and vm.mem_cd = mem.mem_cd
   and vi.movie_cd = mo.movie_cd
   
   
 

>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
