function stopandplay_button(app,j,step_animation,X,Y,Z,vel,theta,traj,h)
while app.Button_3.Value == 1
    pause(0.01);
    while app.Button_4.Value == 1
        j = j - step_animation;
        pause(0.01);
        app.XEditField.Value = X(j);
        app.YEditField.Value = Y(j);
        app.ZEditField.Value = Z(j);
        app.VxEditField.Value = vel(1,j);
        app.VyEditField.Value = vel(2,j);
        app.VzEditField.Value = vel(3,j);
        app.thEditField.Value = rad2deg(theta(j))-floor(rad2deg(theta(j))/360)*360;
        set(traj,'XData',X(1:j),'YData',Y(1:j),'ZData',Z(1:j));
        hold(app.UIAxes,"on");
        set(h,'XData',X(j),'YData',Y(j),'ZData',Z(j));
        drawnow
    end
    while app.Button_5.Value == 1
        j = j + step_animation;
        pause(0.01);
        app.XEditField.Value = X(j);
        app.YEditField.Value = Y(j);
        app.ZEditField.Value = Z(j);
        app.VxEditField.Value = vel(1,j);
        app.VyEditField.Value = vel(2,j);
        app.VzEditField.Value = vel(3,j);
        app.thEditField.Value = rad2deg(theta(j))-floor(rad2deg(theta(j))/360)*360;
        set(traj,'XData',X(1:j),'YData',Y(1:j),'ZData',Z(1:j));
        hold(app.UIAxes,"on");
        set(h,'XData',X(j),'YData',Y(j),'ZData',Z(j));
        drawnow
    end
        app.XEditField.Value = X(j);
        app.YEditField.Value = Y(j);
        app.ZEditField.Value = Z(j);
        app.VxEditField.Value = vel(1,j);
        app.VyEditField.Value = vel(2,j);
        app.VzEditField.Value = vel(3,j);
        app.thEditField.Value = rad2deg(theta(j))-floor(rad2deg(theta(j))/360)*360;
        set(traj,'XData',X(1:j),'YData',Y(1:j),'ZData',Z(1:j));
        hold(app.UIAxes,"on");
        set(h,'XData',X(j),'YData',Y(j),'ZData',Z(j));
        drawnow
end
