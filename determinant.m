function D=determinant(A)%determinanat 함수 정의
[n,n]=size(A); %사용할 변수 초기화
if n==2%A가 2 by 2 행렬인경우
    D = A(1,1)*A(2,2)-A(1,2)*A(2,1);%D의 값
else
    D=0;%D 0으로 초기화
    C=cofactor(A);%A에 대한 Cofactor 행렬 구하기
    for i=1:n%Determinant 구하는 반복문
        D = D + A(1,i)*C(1,i);% 1행에 대한 모든 A(1,n)*C(1,n)값을 구하고 D에 더하기
    end
end
end