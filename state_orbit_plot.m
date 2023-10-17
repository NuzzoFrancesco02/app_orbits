function state_orbit_plot(ax,a,e,i,OM,om,th,mu)
r = kep2car(a,e,i,OM,om,th,mu);
v = [45 30 30];
view(ax,v);
plot3(ax,r(1,end),r(2,end),r(3,end),'or','MarkerFaceColor',"#77AC30",'MarkerEdgeColor',"#77AC30",'MarkerSize',10);
hold(ax,"on");
plot3(ax,r(1,1:end),r(2,1:end),r(3,1:end),'Color',"#A2142F",'LineStyle','-');
grid(ax,"on");
Rt=6378;
Terra3d(ax,Rt);