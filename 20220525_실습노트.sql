
-- mod (m, n) >> m�� n���� ���� ������
-- decode(�÷�, ����1, ���1, ����2, ���2,  ... ) >> �÷��� ����1�̸� ���1 ��� (if), �÷��� ����2�̸� ���2 ���(else if).... (else)

select empno from emp -- emp���� empno�� �ҷ�����

decode(mod(2, 2), 1, 'Ȧ��') -- mod(2, 2)>> 2�� 2�� ���� ��������? 0�̴�. 
                                        -- decode �Լ��� �����غ���, �÷� 0�� ����1(1)�� ��, ���1('Ȧ��')�̴�. >>  decode(0, 1, 'Ȧ��')
                                        
                                        -- decode �Լ� >> if�� ����.
                                               --         if 2%2 = 0 then
                                               --            return '¦��'
                                               --         elsif 2%2 = 1 then
                                               --             return 'Ȧ��'
                                               --         end
                                               
                                               
select decode(mod(2, 2), 0, 'Ȧ��')
 from dual