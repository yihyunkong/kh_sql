
-- mod (m, n) >> m을 n으로 나눈 나머지
-- decode(컬럼, 조건1, 결과1, 조건2, 결과2,  ... ) >> 컬럼이 조건1이면 결과1 출력 (if), 컬럼이 조건2이면 결과2 출력(else if).... (else)

select empno from emp -- emp에서 empno만 불러오기

decode(mod(2, 2), 1, '홀수') -- mod(2, 2)>> 2를 2로 나눈 나머지는? 0이다. 
                                        -- decode 함수와 적용해보면, 컬럼 0이 조건1(1)일 때, 결과1('홀수')이다. >>  decode(0, 1, '홀수')
                                        
                                        -- decode 함수 >> if와 같다.
                                               --         if 2%2 = 0 then
                                               --            return '짝수'
                                               --         elsif 2%2 = 1 then
                                               --             return '홀수'
                                               --         end
                                               
                                               
select decode(mod(2, 2), 0, '홀수')
 from dual