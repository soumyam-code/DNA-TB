clc
clear all
close all
mat_file2
%mat_file3
I=complex(0,1);  
eigVectorH=[];
eigVal=[];
N=200;
th_eq=pi/10;
lambda=1;
%tau=.2*180/pi;
Del=-0%*tau*lambda*q_1(2)
%Del=0;
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
% Need to change t_12 t_23 t_26 t_27
t_12=.41%FH(1,x(:,1),z_1(:,1));
t_23=.23%FH(2,z_1(:,1),z_2(:,1));
t_67=t_23;
t_34=t_12;
t_15=0%FH(3,x(:,1),x(:,2));
t_16=0%=FH(1,x(:,1),z_1(:,2));
t_25=0%FH(1,z_1(:,1),x(:,2));
t_26=.20*((1-6.73*sin(Del/2+th_eq/2)^2)*exp(-6.26*(cos(th_eq)-cos(th_eq+Del)))/(1-6.73*sin(th_eq/2)^2))%.21*cos(Del+th_eq);%FH(2,z_1(:,1),z_1(:,2))*cos(Del+th_eq)/cos(th_eq);
t_27= 0.09*((1-1.39*sin(Del/2+th_eq/2)^2)*exp(2.85*(cos(th_eq)-cos(th_eq+Del)))/(1-1.39*sin(th_eq/2)^2))%FH(2,z_1(:,1),z_2(:,2));
t_36=t_27;
t_38=t_16;
t_47=t_38;
t_48=t_15;
t_37=t_26%.9*cos(th_eq)*((1-6.73*sin(Del/2+th_eq/2)^2)*exp(-6.26*(cos(th_eq)-cos(th_eq+Del)))/(1-6.73*sin(th_eq/2)^2))%%*cos(Del+th_eq);%t_26;
t_56=t_12;
t_78=t_12;

eigVal1 = [];
eigVal2 = [];
for q_1=0:1
    for q_2=-2*pi:.1:2*pi
 % H=[eps_1+t_15*exp(I*2*1i*q_2/N)+t_15*exp(-I*2*1i*q_2/N) t_12+t_16*exp(I*2*1i*q_2/N)+t_25*exp(-I*2*1i*q_2/N)
     % t_12+t_16*exp(-I*2*1i*q_2/N)+t_25*exp(I*2*1i*q_2/N) eps_2+t_23*exp(I*1i*q_1)+t_27*exp(I*2*1i*q_2/N)*exp(I*1i*q_1)+t_27*exp(-I*2*1i*q_2/N)*exp(I*1i*q_1)]
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
 T2=[eps_1+t_15*exp(1i*q_2)+t_15*exp(-1i*q_2) t_12+t_16*(exp(1i*q_2)+exp(-1i*q_2))
     t_12 + t_16*(exp(1i*q_2)+exp(-1i*q_2)) eps_2+t_26*(exp(1i*q_2)+exp(-1i*q_2))+t_23*exp(1i*pi*q_1)+t_27*(exp(1i*q_2)+exp(-1i*q_2))*exp(1i*pi*q_1)]
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
    if(q_1==0)
    eigVal1=[eigVal1 A]
    else
    eigVal2=[eigVal2 A]
    end
    end
end    
   K=-2*pi:.1:2*pi;
   plot(K, eigVal1(1,:),'k')
   hold on
   plot(K,eigVal1(2,:),'k');
   hold on
     plot(K, eigVal2(1,:),'k')
   hold on
   plot(K,eigVal2(2,:),'k');
   hold on 
   
  % plot(K, eigVal(3,:),'k')
   hold on
  % plot(K,eigVal(4,:),'k');
   hold on