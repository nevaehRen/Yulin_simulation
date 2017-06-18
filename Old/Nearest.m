function Interval=Nearest(A,B)
% 
% A=[1 2 3 4 10];
% B=[2.5 4.5 6 10 5];
% B=A;

Interval=[];

for i=A(1:end)

   if isempty(B(B>i))
%    Interval=[Interval;Interval(end)];
   Interval=[Interval;min(abs(B(B<i)-i))];
   else
   Interval=[Interval; min(B(B>i)-i)];
   end
   
end
