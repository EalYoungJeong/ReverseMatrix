function C=cofactor(A)%cofactor 함수 정의
[n,n]=size(A); M=zeros(n-1,n-1); Mrow=1; Mcolumn = 1; C=zeros(n,n);%사용할 변수 초기화
for i=1:n%C행렬 안의 모든 Cij를 구하기 위한 4중반복문
    for j=1:n
        for k=1:n% C(i,j)에 대한 Minor 행렬구하는 2중반복문
            if k==i%같은 행이면 그 행을 무시함
                continue
            else
            for l=1:n
                if l==j%같은 열이면 그 열을 무시함
                    continue
                else
                M(Mcolumn,Mrow) = A(k,l);%i행 j열을 제외한 A의 모든 요소들을 각 위치대로 M행렬에 저장
                Mrow=Mrow+1;%Mrow 인덱스 증가
                end
            end
            Mcolumn=Mcolumn+1;%Mcolumn 인덱스 증가
            Mrow=1;%Mrow 1로 초기화
            end
        end
        DM = determinant(M);%DM에 M의 determinant 값 저장 
        C(i,j)=((-1)^(i+j))*DM;%C(i,j)값 구하기
        Mcolumn=1;%Mcolumn 1로 초기화
    end
end
end