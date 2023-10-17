function state_orbit_plot(ax,a,e,i,OM,om,th,mu)
r = kep2car(a,e,i,OM,om,th,mu);
v = [45 30 30];
view(ax,v);
plot3(ax,r(1,end),r(2,end),r(3,end),'or','MarkerFaceColor',"#77AC30",'MarkerEdgeColor',"#77AC30",'MarkerSize',10);
hold(app.UIAxes,"on");
plot3(ax,r(1,1:end),r(2,1:end),r(3,1:end),'Color',"#A2142F");
grid(ax,"on");
Rt=6378;
load('topo.mat','topo','topomap1');
% whos topo topomap1
contour(ax,0:359,-89:90,topo,[0 0],'b')
axis(ax,'equal');
% box on
% set(gca,'XLim',[0 360],'YLim',[-90 90], ...
%     'XTick',[0 60 120 180 240 300 360], ...
%     'Ytick',[-90 -60 -30 0 30 60 90]);
hold (ax,"on")
image(ax,[0 360],[-90 90],topo,'CDataMapping', 'scaled');
colormap(ax,topomap1)
[x,y,z] = sphere(app.UIAxes,100);
% cla reset
% axis square off
props.AmbientStrength = 0.1;
props.DiffuseStrength = 1;
props.SpecularColorReflectance = .5;
props.SpecularExponent = 20;
props.SpecularStrength = 1;
props.FaceColor= 'texture';
props.EdgeColor = 'none';
props.FaceLighting = 'phong';
props.Cdata = topo;
surface(ax,x*Rt,y*Rt,z*Rt,props);
light(ax,'position',[1 1 1]);
light(ax,'position',[-1.5 0.5 -0.5], 'color', [.6 .2 .2]);
