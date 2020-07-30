clc
clear all
close all
mat_file2
%mat_file3
I=complex(0,1);  
eigVectorH=[];
eigVal=[];
N=200;
th_eq=pi/5;
lambda=1;
%tau=.2*180/pi;
%Del=.04%tau*lambda*q_1(2)
Del=0;
b=[.0258 .0258 .0258 .0258]
mat_file4;
%Del=0;
    for tu=1:4
       b_xy=b(tu)
       subroutine
       Phi(tu)=phi
    end
    
eps_1=9.36%8.85%+2*.0258*(cos(Del+th_eq)-cos(th_eq));%
eps_2=8.22+Phi(1)%2*.0258*(cos(Del+th_eq)-cos(th_eq));%G
eps_3=8.22+Phi(2)%2*.0258*(cos(Del+th_eq)-cos(th_eq));%C
eps_4=9.36%+2*.0258*(cos(Del+th_eq)-cos(th_eq));%


% t_12=-.1%FH(1,x(:,1),z_1(:,1));
% t_23=-.35%FH(2,z_1(:,1),z_2(:,1));
% t_34=t_12;
% t_15=-.2%FH(1,x(:,1),x(:,2));
% t_16=-.35%FH(1,x(:,1),z_1(:,2));////
% t_25=t_16%FH(1,z_1(:,1),x(:,2));
% t_26=-.35%FH(2,z_1(:,1),z_1(:,2));///
% t_27=-.35%FH(2,z_1(:,1),z_2(:,2));////
% t_36=t_27;%////
% t_38=t_16;
% t_47=t_38;
% t_48=t_15;
% t_37=t_26;
% 
t_12=.41%FH(1,x(:,1),z_1(:,1));
t_23=.23%FH(2,z_1(:,1),z_2(:,1));
t_67=.23;
t_34=.41%t_12;
t_15=0%FH(3,x(:,1),x(:,2));
t_16=0%=FH(1,x(:,1),z_1(:,2));
t_25=0%FH(1,z_1(:,1),x(:,2));
t_26=.20%*cos(th_eq)*((1-6.73*sin(Del/2+th_eq/2)^2)*exp(-6.26*(cos(th_eq)-cos(th_eq+Del)))/(1-6.73*sin(th_eq/2)^2))%.21*cos(Del+th_eq);%FH(2,z_1(:,1),z_1(:,2))*cos(Del+th_eq)/cos(th_eq);
t_27= 0.09%FH(2,z_1(:,1),z_2(:,2));
t_36=t_27;
t_38=t_16;
t_47=t_38;
t_48=t_15;
t_37=t_26%.9*cos(th_eq)*((1-6.73*sin(Del/2+th_eq/2)^2)*exp(-6.26*(cos(th_eq)-cos(th_eq+Del)))/(1-6.73*sin(th_eq/2)^2))%%*cos(Del+th_eq);%t_26;
t_56=.41;
t_78=.41;

eigVal1 = [];
eigVal2 = [];
T2=zeros(40,40)
    for q_2=0:.005:pi/5;
%  H=[eps_1+t_15*exp(I*2*1i*q_2/N)+t_15*exp(-I*2*1i*q_2/N) t_12+t_16*exp(I*2*1i*q_2/N)+t_25*exp(-I*2*1i*q_2/N)
 %     t_12+t_16*exp(-I*2*1i*q_2/N)+t_25*exp(I*2*1i*q_2/N) eps_2+t_23*exp(I*1i*q_1)+t_27*exp(I*2*1i*q_2/N)*exp(I*1i*q_1)+t_27*exp(-I*2*1i*q_2/N)*exp(I*1i*q_1)]
%    T1=[eps_1 t_12 0 0 
%       t_12 eps_2 t_23 0 
%       0 t_23 eps_3 t_34
%       0 0 t_34 eps_4]
%      H1=[t_15+t_15*exp(1i*q_2) t_16+t_16*exp(1i*q_2) 0 0
%       t_25+t_25*exp(1i*q_2) t_26+t_26*exp(1i*q_2) t_27+t_27*exp(1i*q_2) 0
%       0 t_36+t_36*exp(1i*q_2) t_37+t_37*exp(1i*q_2) t_38+t_38*exp(1i*q_2)
%       0 0 t_47+t_47*exp(1i*q_2) t_48+t_48*exp(1i*q_2)]
%   H=[T1 H1
%      H1' T1]
 %T2=[eps_1+t_15*exp(1i*q_2)+t_15*exp(-1i*q_2) t_12+t_16*(exp(1i*q_2)+exp(-1i*q_2))
  %   t_12 + t_16*(exp(1i*q_2)+exp(-1i*q_2)) eps_2+t_26*(exp(1i*q_2)+exp(-1i*q_2))+(t_23+t_27*(exp(1i*q_2)+exp(-1i*q_2)))*exp(1i*q_1)]
  T2(1,1:6)=[eps_1 t_12 0 0 t_15 t_16];
  T2(1,37:38)=[t_15*exp(-1i*10*q_2) t_16*exp(-1i*10*q_2)];
    size(T2) 
  kl=2
  T2(2,1:7)=[t_12 eps_2 t_23 0 t_25 t_26 t_27]
  T2(2,37:39)=[t_16*exp(-1i*10*q_2) t_26*exp(-1i*10*q_2) t_27*exp(-1i*10*q_2)]
  T2(3,2:8)=[t_23 eps_3 t_12 0 t_27 t_26 t_16]
  T2(3,38:40)=[t_27*exp(-1i*10*q_2), t_37*exp(-1i*10*q_2),t_16*exp(-1i*10*q_2)]
  T2(4,3:8)=[t_12 eps_4 0 0 t_16 t_15]
  T2(4,39:40)=[t_16*exp(-1i*10*q_2) t_15*exp(-1i*10*q_2)]
  for i=5:4:33
         T2(i,i-4:i+5)=[t_15 t_16 0 0 eps_1 t_12 0 0 t_15 t_16];
         T2(i+1,i+1-5:i+1+5)=[t_16 t_26 t_27 0  t_12 eps_2 t_23 0 t_16 t_26 t_27]
         T2(i+2,i+2-5:i+2+5)=[t_27 t_37 t_16 0 t_23 eps_3 t_12 0 t_36 t_26 t_16]
         T2(i+3,i+3-5:i+3+4)=[t_16 t_15 0 0 t_12 eps_4 0 0 t_16 t_15]
  end
        T2(37,33:40)=[t_15 t_25 0 0 eps_1 t_12 0 0 ];
  T2(37,1:2)=[t_15*exp(1i*10*q_2) t_16*exp(1i*10*q_2)]
  T2(38,33:40)=[t_16 t_26 t_36 0 t_12 eps_2 t_23 0]
  T2(38,1:3)=[t_16*exp(1i*10*q_2) t_26*exp(1i*10*q_2) t_27*exp(1i*10*q_2)]
  T2(39,34:40)=[t_27 t_37 t_16 0 t_23 eps_3 t_12]
  T2(39,2:4)=[t_27*exp(1i*10*q_2) t_26*exp(1i*10*q_2) t_16*exp(1i*10*q_2)]
  T2(40,35:40)=[t_16 t_15 0 0 t_12 eps_4 ]
  T2(40,3:4)=[t_16*exp(1i*10*q_2) t_15*exp(1i*10*q_2)]
  %T2(3,38:40)=[t_27*exp(-1i*10*q_2), t_37*exp(-1i*10*q_2),t_15*exp(-1i*10*q_2)]
         %1 2 3 4
         %5 6 7 8
         %9 10 11 12    
 a=eig(T2);
%      [eigvec e]=eig(H);
%      V1=[V1 eigvec(1,:)]
%      V2=[V2 eigvec(2,:)]
%      V3=[V3 eigvec(3,:)]
%      V4=[V4 eigvec(4,:)]
%      V5=[V5 eigvec(5,:)]
%      V6=[V6 eigvec(6,:)]
%      V7=[V7 eigvec(7,:)]
%      V8=[V8 eigvec(8,:)]
%      
    A=abs(a);

    eigVal2=[eigVal2 A]
    end
    
   K=0:.005:pi/5;
for i=1:40
     plot(10*K, eigVal2(i,:),'k')
   hold on
end
%    plot(K,eigVal(8,:));
%    hold on
% %end
