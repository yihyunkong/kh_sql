1. �� �޿��� ������ 18�� ������ Ȧ�� �޿��� ������ 1/18�� ���޵ǰ�, ¦�� �޿��� ������ 2/18�� ���޵ȴٰ� �������� ��, Ȧ�� �ް� ¦�� �޿� ���� �ݾ��� ��Ÿ���ÿ�.
SELECT EMP_NAME, SALARY/18 FROM TEMP -- Ȧ�� ��
SELECT EMP_NAME, SALARY/18*2 FROM TEMP -- ¦�� �� 


2. ������ ���� �� �޿��� ����� 10������ ���޵ȴٸ�(¦������ 20����)���� ������ ��� �ٲ��� �ۼ��� ���ÿ�.
SELECT EMP_NAME, SALARY/18+100000 FROM TEMP -- Ȧ�� ��
SELECT EMP_NAME, SALARY/18*2+200000 FROM TEMP -- ¦�� �� 


3. TEMP ���̺��� ��̰� NULL �� �ƴ� ����� ������ �о���ÿ�.
SELECT EMP_NAME FROM TEMP
 WHERE HOBBY != 'null'
 
 
4. TEMP ���̺��� ��̰� NULL�� ����� ��� HOBBY�� "����"�̶�� ���� ġȯ�Ͽ� �������� �������� �״�� ���� �о���ÿ�.
SELECT NVL(HOBBY, '����') FROM TEMP -- NVL �Լ�(����Ŭ������ ���)


5. TEMP�� �ڷ� �� HOBBY�� ���� NULL�� ����� ����ꡯ���� ġȯ���� �� HOBBY�� ������� ����� ������ �������� ������ �ۼ��Ͻÿ�.
SELECT EMP_NAME, NVL(HOBBY, '���') FROM TEMP


6. TEMP�� �ڷ� �� EMP_ID�� EMP_NAME�� ���� �������,���������� ǥ�õǾ� DISPLAY�ǵ��� COLUMN ALLIAS�� �ο��Ͽ� SELECT �Ͻÿ�.
SELECT EMP_ID as "���", EMP_NAME as "����" FROM TEMP


7.TEMP�� �ڷḦ ���� ��(LEV)�� ASCENDING�ϸ鼭 ��������� �ٽ� ��� ������ DESCENDING�ϰ� �ϴ� ORDER BY�ϴ� ������ ����� ���ÿ�.
SELECT * FROM TEMP order by LEV ASC, EMP_ID DESC
