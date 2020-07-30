subrou
phi=0
if(tu==1)
    dist1=norm(zz_1(:,2)-zz_1(:,1))
    dist2=norm(z_1(:,2)-z_1(:,1))
phi=-2*kep*(dist2-dist1)

end

if(tu==2)
    dist1=norm(zz_2(:,2)-zz_2(:,1))
    dist2=norm(z_2(:,2)-z_2(:,1))
phi=-2*kep*(dist2-dist1)
end
