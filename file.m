A = [1 2 3; 4 5 6; 7 8 9];
save('B','A')
C=load('B','A');
dlmwrite('A.txt',A,' ')
C=dlmread('A.txt',' ');
type('A.txt')