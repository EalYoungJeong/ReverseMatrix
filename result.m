function I=inverse(A)%inverse 함수 정의
tic%시간 재는 함수 시작
A=[2 3 4 1 9;4 1 2 1 0;4 1 2 2 1;1 1 2 2 3;2 2 3 1 1];%A행렬 정의
[n,n]=size(A); C=cofactor(A); D=determinant(A); I = zeros(n,n);%사용할 변수 정의
TC=C';%TC는 C의 전치행렬
I = TC/D;%I = 1/detA * C^t
toc%시간재는 함수 종료
end