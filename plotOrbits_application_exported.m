classdef plotOrbits_application_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                      matlab.ui.Figure
        bielliptic                    matlab.ui.container.Panel
        r_bEditField                  matlab.ui.control.NumericEditField
        r_bEditFieldLabel             matlab.ui.control.Label
        D_v3EditField                 matlab.ui.control.NumericEditField
        D_v3EditFieldLabel            matlab.ui.control.Label
        e_t2EditField                 matlab.ui.control.NumericEditField
        e_t2EditFieldLabel            matlab.ui.control.Label
        a_t2EditField                 matlab.ui.control.NumericEditField
        a_t2EditFieldLabel            matlab.ui.control.Label
        OMEditField_4                 matlab.ui.control.NumericEditField
        OMEditField_4Label            matlab.ui.control.Label
        iEditField_4                  matlab.ui.control.NumericEditField
        iEditField_4Label             matlab.ui.control.Label
        TimeEditField_2               matlab.ui.control.NumericEditField
        TimeEditField_2Label          matlab.ui.control.Label
        D_v2EditField_2               matlab.ui.control.NumericEditField
        D_v2EditField_2Label          matlab.ui.control.Label
        D_v1EditField_2               matlab.ui.control.NumericEditField
        D_v1EditField_2Label          matlab.ui.control.Label
        e_t1EditField                 matlab.ui.control.NumericEditField
        e_t1EditFieldLabel            matlab.ui.control.Label
        a_t1EditField                 matlab.ui.control.NumericEditField
        a_t1EditFieldLabel            matlab.ui.control.Label
        th_fEditField_3               matlab.ui.control.NumericEditField
        th_fEditField_3Label          matlab.ui.control.Label
        om_fEditField_2               matlab.ui.control.NumericEditField
        om_fEditField_2Label          matlab.ui.control.Label
        e_fEditField_2                matlab.ui.control.NumericEditField
        e_fEditField_2Label           matlab.ui.control.Label
        a_fEditField_2                matlab.ui.control.NumericEditField
        a_fEditField_2Label           matlab.ui.control.Label
        th_iEditField_2               matlab.ui.control.NumericEditField
        th_iEditField_2Label          matlab.ui.control.Label
        om_iEditField_2               matlab.ui.control.NumericEditField
        om_iEditField_2Label          matlab.ui.control.Label
        e_iEditField_2                matlab.ui.control.NumericEditField
        e_iEditField_2Label           matlab.ui.control.Label
        a_iEditField_2                matlab.ui.control.NumericEditField
        a_iEditField_2Label           matlab.ui.control.Label
        ButtonGroup_3                 matlab.ui.container.ButtonGroup
        apogeButton                   matlab.ui.control.RadioButton
        perigeButton                  matlab.ui.control.RadioButton
        useconstantsCheckBox_2        matlab.ui.control.CheckBox
        Run_bielliptic                matlab.ui.control.Button
        TransferorbitLabel_2          matlab.ui.control.Label
        FinalorbitLabel_2             matlab.ui.control.Label
        FirstorbitLabel_2             matlab.ui.control.Label
        elliptical_bi_panel           matlab.ui.container.Panel
        OMEditField_3                 matlab.ui.control.NumericEditField
        OMEditField_3Label            matlab.ui.control.Label
        iEditField_3                  matlab.ui.control.NumericEditField
        iEditField_3Label             matlab.ui.control.Label
        TimeEditField                 matlab.ui.control.NumericEditField
        TimeEditFieldLabel            matlab.ui.control.Label
        D_v2EditField                 matlab.ui.control.NumericEditField
        D_v2EditFieldLabel            matlab.ui.control.Label
        D_v1EditField                 matlab.ui.control.NumericEditField
        D_v1EditFieldLabel            matlab.ui.control.Label
        e_tEditField                  matlab.ui.control.NumericEditField
        e_tEditFieldLabel             matlab.ui.control.Label
        a_tEditField                  matlab.ui.control.NumericEditField
        a_tEditFieldLabel             matlab.ui.control.Label
        th_fEditField_2               matlab.ui.control.NumericEditField
        th_fEditField_2Label          matlab.ui.control.Label
        om_fEditField                 matlab.ui.control.NumericEditField
        om_fEditFieldLabel            matlab.ui.control.Label
        e_fEditField                  matlab.ui.control.NumericEditField
        e_fEditFieldLabel             matlab.ui.control.Label
        a_fEditField                  matlab.ui.control.NumericEditField
        a_fEditFieldLabel             matlab.ui.control.Label
        th_iEditField                 matlab.ui.control.NumericEditField
        th_iEditFieldLabel            matlab.ui.control.Label
        om_iEditField                 matlab.ui.control.NumericEditField
        om_iEditFieldLabel            matlab.ui.control.Label
        e_iEditField                  matlab.ui.control.NumericEditField
        e_iEditFieldLabel             matlab.ui.control.Label
        a_iEditField                  matlab.ui.control.NumericEditField
        a_iEditFieldLabel             matlab.ui.control.Label
        ButtonGroup_2                 matlab.ui.container.ButtonGroup
        perigeperigeButton            matlab.ui.control.RadioButton
        apogeapogeButton              matlab.ui.control.RadioButton
        apogeperigeButton             matlab.ui.control.RadioButton
        perigeapogeButton             matlab.ui.control.RadioButton
        useconstantsCheckBox          matlab.ui.control.CheckBox
        Run_elliptical                matlab.ui.control.Button
        TransferorbitLabel            matlab.ui.control.Label
        FinalorbitLabel               matlab.ui.control.Label
        FirstorbitLabel               matlab.ui.control.Label
        periapsis                     matlab.ui.container.Panel
        th_iEditField_3               matlab.ui.control.NumericEditField
        th_iEditField_3Label          matlab.ui.control.Label
        OMEditField_5                 matlab.ui.control.NumericEditField
        OMEditField_5Label            matlab.ui.control.Label
        iEditField_5                  matlab.ui.control.NumericEditField
        iEditField_5Label             matlab.ui.control.Label
        TimeEditField_3               matlab.ui.control.NumericEditField
        TimeEditField_3Label          matlab.ui.control.Label
        D_vEditField                  matlab.ui.control.NumericEditField
        D_vEditFieldLabel             matlab.ui.control.Label
        th_fEditField_4               matlab.ui.control.NumericEditField
        th_fEditField_4Label          matlab.ui.control.Label
        om_fEditField_3               matlab.ui.control.NumericEditField
        om_fEditField_3Label          matlab.ui.control.Label
        e_fEditField_3                matlab.ui.control.NumericEditField
        e_fEditField_3Label           matlab.ui.control.Label
        a_fEditField_3                matlab.ui.control.NumericEditField
        a_fEditField_3Label           matlab.ui.control.Label
        om_iEditField_3               matlab.ui.control.NumericEditField
        om_iEditField_3Label          matlab.ui.control.Label
        e_iEditField_3                matlab.ui.control.NumericEditField
        e_iEditField_3Label           matlab.ui.control.Label
        a_iEditField_3                matlab.ui.control.NumericEditField
        a_iEditField_3Label           matlab.ui.control.Label
        ButtonGroup_4                 matlab.ui.container.ButtonGroup
        pointbButton                  matlab.ui.control.RadioButton
        pointaButton                  matlab.ui.control.RadioButton
        useconstantsCheckBox_3        matlab.ui.control.CheckBox
        RunButton_4                   matlab.ui.control.Button
        FinalorbitLabel_3             matlab.ui.control.Label
        FirstorbitLabel_3             matlab.ui.control.Label
        TabGroup2                     matlab.ui.container.TabGroup
        ImpulseTab                    matlab.ui.container.Tab
        PeriapsisangleButton          matlab.ui.control.StateButton
        ImpulsesTab_2                 matlab.ui.container.Tab
        EllipticalbitangentButton     matlab.ui.control.StateButton
        ImpulsesTab_3                 matlab.ui.container.Tab
        BiellipticButton              matlab.ui.control.StateButton
        TabGroup                      matlab.ui.container.TabGroup
        InputTab                      matlab.ui.container.Tab
        omEditField_2                 matlab.ui.control.NumericEditField
        omEditField_2Label            matlab.ui.control.Label
        Delta_thEditField             matlab.ui.control.NumericEditField
        Delta_thEditFieldLabel        matlab.ui.control.Label
        thEditField_2                 matlab.ui.control.NumericEditField
        thEditField_2Label            matlab.ui.control.Label
        eEditField_2                  matlab.ui.control.NumericEditField
        eEditField_2Label             matlab.ui.control.Label
        OMEditField_2                 matlab.ui.control.NumericEditField
        OMEditField_2Label            matlab.ui.control.Label
        iEditField_2                  matlab.ui.control.NumericEditField
        iEditField_2Label             matlab.ui.control.Label
        aKmEditField_2                matlab.ui.control.NumericEditField
        aKmEditField_2Label           matlab.ui.control.Label
        th_fEditField                 matlab.ui.control.NumericEditField
        th_fEditFieldLabel            matlab.ui.control.Label
        th_0EditField                 matlab.ui.control.NumericEditField
        th_0EditFieldLabel            matlab.ui.control.Label
        muEditField                   matlab.ui.control.NumericEditField
        muEditFieldLabel              matlab.ui.control.Label
        OtherconstantsTab             matlab.ui.container.Tab
        GridLayout                    matlab.ui.container.GridLayout
        raEditField                   matlab.ui.control.NumericEditField
        raEditFieldLabel              matlab.ui.control.Label
        rpEditField                   matlab.ui.control.NumericEditField
        rpEditFieldLabel              matlab.ui.control.Label
        bEditField                    matlab.ui.control.NumericEditField
        bEditFieldLabel               matlab.ui.control.Label
        hEditField_2                  matlab.ui.control.NumericEditField
        hLabel                        matlab.ui.control.Label
        pEditField                    matlab.ui.control.NumericEditField
        pEditFieldLabel               matlab.ui.control.Label
        EEditField                    matlab.ui.control.NumericEditField
        EEditFieldLabel               matlab.ui.control.Label
        Panel                         matlab.ui.container.Panel
        TransferButton                matlab.ui.control.StateButton
        Button_5                      matlab.ui.control.StateButton
        Button_4                      matlab.ui.control.StateButton
        Button_3                      matlab.ui.control.StateButton
        norbitsEditField              matlab.ui.control.NumericEditField
        norbitsEditFieldLabel         matlab.ui.control.Label
        AnimationButton               matlab.ui.control.Button
        StateButton                   matlab.ui.control.Button
        ConstansButton                matlab.ui.control.Button
        CoordinatesButton             matlab.ui.control.Button
        ConversionsPanel              matlab.ui.container.Panel
        RunButton                     matlab.ui.control.Button
        PasteintoConstantsCheckBox    matlab.ui.control.CheckBox
        XEditField                    matlab.ui.control.NumericEditField
        XEditFieldLabel               matlab.ui.control.Label
        ButtonGroup                   matlab.ui.container.ButtonGroup
        KeptoCarButton                matlab.ui.control.RadioButton
        CartoKepButton                matlab.ui.control.RadioButton
        VzEditField                   matlab.ui.control.NumericEditField
        VzEditFieldLabel              matlab.ui.control.Label
        VyEditField                   matlab.ui.control.NumericEditField
        VyEditField_2Label            matlab.ui.control.Label
        VxEditField                   matlab.ui.control.NumericEditField
        VxEditFieldLabel              matlab.ui.control.Label
        ZEditField                    matlab.ui.control.NumericEditField
        ZEditFieldLabel               matlab.ui.control.Label
        YEditField                    matlab.ui.control.NumericEditField
        YEditFieldLabel               matlab.ui.control.Label
        thEditField                   matlab.ui.control.NumericEditField
        thLabel                       matlab.ui.control.Label
        eEditField                    matlab.ui.control.NumericEditField
        eEditFieldLabel               matlab.ui.control.Label
        OMEditField                   matlab.ui.control.NumericEditField
        OMLabel                       matlab.ui.control.Label
        iEditField                    matlab.ui.control.NumericEditField
        iLabel                        matlab.ui.control.Label
        omEditField                   matlab.ui.control.NumericEditField
        omLabel                       matlab.ui.control.Label
        aKmEditField                  matlab.ui.control.NumericEditField
        aKmEditFieldLabel             matlab.ui.control.Label
        CreatedbyFrancescoNuzzoLabel  matlab.ui.control.Label
        Label                         matlab.ui.control.Label
        UIAxes                        matlab.ui.control.UIAxes
    end

    
    properties (Access = public)
        Property % Description
    end
    
    methods (Access = private)
        
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

        end
        
        function animation_plot_orbit(app,r,vel,theta)
            Terra3d(app,app.UIAxes);
            hold(app.UIAxes,"on");
            X = r(1,:); Y = r(2,:); Z = r(3,:);
            plot3(app.UIAxes,X,Y,Z,'Color',"none");
            grid(app.UIAxes,"on");
            
            % Define an indefinite plot
            v = ([45 30 30]);
            h = plot3(app.UIAxes,nan,nan,nan,'or','MarkerFaceColor',"#77AC30",'MarkerEdgeColor',"#77AC30",'MarkerSize',10);
            traj = plot3(app.UIAxes,nan,nan,nan,'Color',"#A2142F");
            view(app.UIAxes,v);
            % Define the step animation
            step_animation = 2;
            % Define the moving point
            %for j = 1 : app.norbitsEditField.Value
            j = 0;
            try
                while j < length(X) - 1
                    j = j + step_animation;
                    set(traj,'XData',X(1:j),'YData',Y(1:j),'ZData',Z(1:j));
                    hold(app.UIAxes,"on");
                    set(h,'XData',X(j),'YData',Y(j),'ZData',Z(j));
                    drawnow
                    
                    app.XEditField.Value = X(j);
                    app.YEditField.Value = Y(j);
                    app.ZEditField.Value = Z(j);
                    app.VxEditField.Value = vel(1,j);
                    app.VyEditField.Value = vel(2,j);
                    app.VzEditField.Value = vel(3,j);
                    app.thEditField.Value = rad2deg(theta(j))-floor(rad2deg(theta(j))/360)*360;
                    
                    stopandplay_button(app,j,step_animation,X,Y,Z,vel,theta,traj,h);
                    
                    pause(app.Delta_thEditField.Value/10);
                end
            catch
                return
            end
            
        end
        
        function Terra3d(~,ax,Rt)
            % plotta la terra in 3d con il suo raggio nell origine degli assi
            % basta richiamare la funzione
            hold(ax,"on")
            if nargin==2
                Rt=6378;
            end
            
            load('topo.mat','topo','topomap1');
            %whos topo topomap1
            contour(ax,0:359,-89:90,topo,[0 0],'b')
            axis(ax,"equal")
             box on
             set(gca,'XLim',[0 360],'YLim',[-90 90], ...
                 'XTick',[0 60 120 180 240 300 360], ...
                 'Ytick',[-90 -60 -30 0 30 60 90]);
            hold(ax,"on")
            image(ax,[0 360],[-90 90],topo,'CDataMapping', 'scaled');
            colormap(ax,topomap1)
            [x,y,z] = sphere(100);
             cla reset
             axis square off
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
            
            quiver3(ax,0,0,0,0,0,3.5*Rt,'--k')
                        
        end
        
        function transfer_elliptic_plot(app,r1,r2,r3,vel1,vel2,vel3,th1,tht,th3,Kep1,Kept,Kep3)
            ai = Kep1(1); ei = Kep1(2); om_i = Kep1(3); 
            at = Kept(1); et = Kept(2); om_t = Kept(3); 
            af = Kep3(1); ef = Kep3(2); om_f = Kep3(3); 
            r = [r1 r2 r3]; vel = [vel1 vel2 vel3]; theta = [th1 tht th3];
            Terra3d(app,app.UIAxes);
            hold(app.UIAxes,"on");
            X = r(1,:); Y = r(2,:); Z = r(3,:);
            plot3(app.UIAxes,X,Y,Z,'Color',"none");
            grid(app.UIAxes,"on");
            
            v = ([45 30 30]);
            h = plot3(app.UIAxes,nan,nan,nan,'or','MarkerFaceColor',"#77AC30",'MarkerEdgeColor',"#77AC30",'MarkerSize',10);
            traj = plot3(app.UIAxes,nan,nan,nan,'Color',"#A2142F");
            view(app.UIAxes,v);
            % Define the step animation
            step_animation = 2;
            j = 0;
            pos1= length(r1(1,:))+1;
            pos2= length([r1(1,:) r2(1,:)])+1;
            Rt = 6378;
            try
            arr1 = quiver3(app.UIAxes,nan,nan,nan,nan,nan,nan,'b','LineWidth',1.7,'AutoScale','on',...
                                'Color',"#0072BD",'MaxHeadSize',Rt);
            arr2 = quiver3(app.UIAxes,nan,nan,nan,nan,nan,nan,'b','LineWidth',1.7,'AutoScale','on',...
                                'Color',"#0072BD",'MaxHeadSize',Rt);
                while j < length(X) - 1
                    j = j + step_animation;
                    set(traj,'XData',X(1:j),'YData',Y(1:j),'ZData',Z(1:j));
                    hold(app.UIAxes,"on");
                    set(h,'XData',X(j),'YData',Y(j),'ZData',Z(j));
                    drawnow
                    
                    app.XEditField.Value = X(j);
                    app.YEditField.Value = Y(j);
                    app.ZEditField.Value = Z(j);
                    app.VxEditField.Value = vel(1,j);
                    app.VyEditField.Value = vel(2,j);
                    app.VzEditField.Value = vel(3,j);
                    app.thEditField.Value = rad2deg(theta(j))-floor(rad2deg(theta(j))/360)*360;
                    % Update of the constants in all the 3 orbits
                    if j < pos1
                        
                        app.aKmEditField.Value = ai;
                        app.aKmEditField_2.Value = ai;
                        app.eEditField.Value = ei;
                        app.eEditField_2.Value = ei;
                        app.omEditField.Value = rad2deg(om_i);
                        app.omEditField_2.Value = rad2deg(om_i);
                        app.th_0EditField.Value = 0;
                        
                        app.th_fEditField.Value = rad2deg(th1(1));
                        app.th_fEditField.Value = rad2deg(th1(end));
                    elseif j >= pos1 && j < pos2
                        if j == pos1 || j == pos1-1 || j == pos1+1
                            set(arr1,'XData',r(1,j),'YData',r(2,j),'ZData',r(3,j),'UData',vel2(1,1)-vel1(1,end)*Rt*5,...
                                'VData',(vel2(2,1)-vel1(2,end))*Rt*5,'WData',(vel2(3,1)-vel1(3,end))*Rt*5);
                        end
                        app.aKmEditField.Value = at;
                        app.aKmEditField_2.Value = at;
                        app.eEditField.Value = et;
                        app.eEditField_2.Value = et;
                        app.omEditField.Value = rad2deg(om_t);
                        app.omEditField_2.Value = rad2deg(om_t);
                        
                        app.th_0EditField.Value = rad2deg(tht(1));
                        app.th_fEditField.Value = rad2deg(tht(end));
                    elseif j >= pos2
                        if j == pos2 || j == pos2-1 || j == pos2+1
                            set(arr2,'XData',r(1,j),'YData',r(2,j),'ZData',r(3,j),'UData',(vel3(1,1)-vel2(1,end))*Rt*5,...
                                'VData',(vel3(2,1)-vel2(2,end))*Rt*5,'WData',(vel3(3,1)-vel2(3,end))*Rt*5);
                        end
                        app.aKmEditField.Value = af;
                        app.aKmEditField_2.Value = af;
                        app.eEditField.Value = ef;
                        app.eEditField_2.Value = ef;
                        app.omEditField.Value = rad2deg(om_f);
                        app.omEditField_2.Value = rad2deg(om_f);
                        
                        app.th_0EditField.Value = rad2deg(th3(1));
                        app.th_fEditField.Value = rad2deg(th3(end));
                    end
                    stopandplay_button(app,j,step_animation,X,Y,Z,vel,theta,traj,h);
                    pause(app.Delta_thEditField.Value/10);
                end
            catch
                return
            end
            
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button down function: ConversionsPanel
        function ConversionsPanelButtonDown(app, event)
            
        end

        % Value changed function: aKmEditField
        function aKmEditFieldValueChanged(app, event)
            
            
        end

        % Close request function: UIFigure
        function UIFigureCloseRequest(app, event)
            delete(app)
            
        end

        % Selection changed function: ButtonGroup
        function ButtonGroupSelectionChanged(app, event)
            
            
            
            
        end

        % Button pushed function: RunButton
        function RunButtonPushed(app, event)
            % COORDINATES PANEL
            mu = app.muEditField.Value;
            if app.KeptoCarButton.Value == 1
                % Update cartesian coordinates to keplerian
                a = app.aKmEditField.Value;
                e = app.eEditField.Value;
                i = deg2rad(app.iEditField.Value);
                OM = deg2rad(app.OMEditField.Value);
                om = deg2rad(app.omEditField.Value);
                th = deg2rad(app.thEditField.Value);
                [r,v] = kep2car(a,e,i,OM,om,th,mu);
                app.XEditField.Value = r(1);
                app.YEditField.Value = r(2);
                app.ZEditField.Value = r(2);
                app.VxEditField.Value = v(1);
                app.VyEditField.Value = v(2);
                app.VzEditField.Value = v(3);
            
            elseif app.CartoKepButton.Value == 1
                % Update cartesian coordinates to keplerian 
                r = zeros(3,1); v = zeros(3,1);
                r(1) = app.XEditField.Value;
                r(2) = app.YEditField.Value;
                r(3) = app.ZEditField.Value;
                v(1) = app.VxEditField.Value;
                v(2) = app.VyEditField.Value;
                v(3) = app.VzEditField.Value;
                [a,e,i,OM,om,th] = car2kep(r,v,mu);
                app.aKmEditField.Value = a;
                app.eEditField.Value = e;
                app.iEditField.Value = rad2deg(i);
                app.OMEditField.Value = rad2deg(OM);
                app.omEditField.Value = rad2deg(om);
                app.thEditField.Value = rad2deg(th);
                
            end
            % paste coordinates into constants panel, in order to start an
            % animation
            value = app.PasteintoConstantsCheckBox.Value;
            if value == 1
                app.aKmEditField_2.Value = app.aKmEditField.Value;
                app.eEditField_2.Value = app.eEditField.Value;
                app.iEditField_2.Value = app.iEditField.Value;
                app.OMEditField_2.Value = app.OMEditField.Value;
                app.omEditField_2.Value = app.omEditField.Value;
                app.th_fEditField.Value = app.thEditField.Value;
            end
            % update "other constants" in constants panel
            app.EEditField.Value = 0.5*norm(v)^2-app.muEditField.Value/norm(r);
            app.pEditField.Value = app.aKmEditField.Value*(1-app.eEditField.Value^2);
            app.hEditField_2.Value = norm(cross(r,v));
            app.bEditField.Value = app.aKmEditField.Value*sqrt(1-app.eEditField.Value^2);
            app.rpEditField.Value = app.rpEditField.Value/(1+app.EEditField.Value);
            app.raEditField.Value = app.raEditField.Value/(1-app.EEditField.Value);
        end

        % Value changed function: PasteintoConstantsCheckBox
        function PasteintoConstantsCheckBoxValueChanged(app, event)
            
        end

        % Button pushed function: CoordinatesButton
        function CoordinatesButtonPushed(app, event)
                app.TabGroup.Visible = "off";
                app.ConversionsPanel.Visible = "on";
        end

        % Button pushed function: ConstansButton
        function ConstansButtonPushed(app, event)
                app.ConversionsPanel.Visible = "off";
                app.TabGroup.Visible = "on";
        end

        % Button down function: UIAxes
        function UIAxesButtonDown(app, event)

        end

        % Button pushed function: StateButton
        function StateButtonPushed(app, event)
            % State button is used to do a static plot of the orbit,
            % the function is not created because it would be used just for one
            % time
            cla(app.UIAxes,'reset') 

            tetha = deg2rad(app.th_0EditField.Value):app.Delta_thEditField.Value:deg2rad(app.th_fEditField.Value);
            state_orbit_plot(app.UIAxes,app.aKmEditField_2.Value,...
            app.eEditField_2.Value,...
            deg2rad(app.iEditField_2.Value),...
            deg2rad(app.OMEditField_2.Value),...
            deg2rad(app.omEditField_2.Value),...
            (tetha),...
            app.muEditField.Value);
        end

        % Button pushed function: AnimationButton
        function AnimationButtonPushed(app, event)
            
            cla(app.UIAxes,'reset') 

            theta = deg2rad(app.th_0EditField.Value):app.Delta_thEditField.Value:app.norbitsEditField.Value*deg2rad(app.th_fEditField.Value);
            [r,vel] = kep2car(app.aKmEditField_2.Value,...
                app.eEditField_2.Value,...
                deg2rad(app.iEditField_2.Value),...
                deg2rad(app.OMEditField_2.Value),...
                deg2rad(app.omEditField_2.Value),...
                (theta),...
                app.muEditField.Value);
           animation_plot_orbit(app,r,vel,theta);
        end

        % Value changed function: Button_3
        function Button_3ValueChanged(app, event)

        end

        % Value changed function: Button_4
        function Button_4ValueChanged(app, event)

        end

        % Value changed function: eEditField
        function eEditFieldValueChanged(app, event)
            
        end

        % Button pushed function: Run_elliptical
        function Run_ellipticalPushed(app, event)
            
            cla(app.UIAxes,'reset') 
            ei = app.e_iEditField.Value; ef = app.e_fEditField.Value;
            ai = app.a_iEditField.Value; af = app.a_fEditField.Value;
            mu = app.muEditField.Value;
            p1 = ai*(1-ei^2);
            p2 = af*(1-ef^2);
            rp1 = p1/(1+ei); ra1 = p1/(1-ei);
            rp2 = p2/(1+ef); ra2 = p2/(1-ef);
            if app.apogeapogeButton.Value == 1
                 app.om_fEditField.Value = app.om_iEditField.Value + 180;
                 om_i = deg2rad(app.om_iEditField.Value);
                 om_f = deg2rad(app.om_fEditField.Value);
                 app.th_iEditField.Value = 180;
                 app.th_fEditField_2.Value = 180+360;
                if ai <= af
                    om_t = om_f;
                    th1_i = pi; th1_f = 3*pi;
                    tht_i = 0; tht_f = pi;
                    th2_i = pi; th2_f = 3*pi;
                else 
                    om_t = om_i;
                    th1_i = pi; th1_f = 3*pi;
                    tht_i = pi; tht_f = 2*pi;
                    th2_i = pi; th2_f = 3*pi;
                end
            at = (ra1+ra2)/2; et = abs(ra2-ra1)/(ra2+ra1); pt = at*(1-et^2);
            D_v1 = sqrt(2*mu*(1/ra1-1/(2*at)))-sqrt(2*mu*(1/ra1-1/(2*ai)));
            D_v2 = sqrt(2*mu*(1/ra2-1/(2*af)))-sqrt(2*mu*(1/ra2-1/(2*at)));
        
           elseif app.perigeperigeButton.Value == 1
                app.om_fEditField.Value = app.om_iEditField.Value + 180;
                om_i = deg2rad(app.om_iEditField.Value);
                om_f = deg2rad(app.om_fEditField.Value);
                app.th_iEditField.Value = 0;
                app.th_fEditField_2.Value = 360;
                
                om_t = om_i;
                th1_i = 0; th1_f = 2*pi;
                tht_i = 0; tht_f = pi;
                th2_i = 0; th2_f = 2*pi;
                
                at = (rp1+rp2)/2; et = (rp2-rp1)/(rp2+rp1); pt = at*(1-et^2);
                D_v1 = sqrt(2*mu*(1/rp1-1/(2*at)))-sqrt(2*mu*(1/rp1-1/(2*ai)));
                D_v2 = sqrt(2*mu*(1/rp2-1/(2*af)))-sqrt(2*mu*(1/rp2-1/(2*at)));
            elseif app.apogeperigeButton.Value == 1
                app.om_fEditField.Value = app.om_iEditField.Value;
                om_i = deg2rad(app.om_iEditField.Value);
                om_f = deg2rad(app.om_fEditField.Value);
                app.th_iEditField.Value = 180;
                app.th_fEditField_2.Value = 360;
                
                om_t = om_i;
                th1_i = pi; th1_f = 3*pi;
                tht_i = pi; tht_f = 2*pi;
                th2_i = 0; th2_f = 2*pi;
                
                at = (ra1+rp2)/2; et = abs(ra1-rp2)/(rp2+ra1);
                D_v1 = sqrt(2*mu*(1/ra1-1/(2*at)))-sqrt(2*mu*(1/ra1-1/(2*ai)));
                D_v2 = sqrt(2*mu*(1/rp2-1/(2*af)))-sqrt(2*mu*(1/rp2-1/(2*at)));
                
            elseif app.perigeapogeButton.Value == 1
                app.om_fEditField.Value = app.om_iEditField.Value;
                app.th_iEditField.Value = 0;
                app.th_fEditField_2.Value = 180;
                om_i = deg2rad(app.om_iEditField.Value);
                om_f = deg2rad(app.om_fEditField.Value);

                om_t = om_f;
                th1_i = 0; th1_f = 2*pi;
                tht_i = 0; tht_f = pi;
                th2_i = pi; th2_f = 3*pi;
    
                at = (rp1+ra2)/2; et = (ra2-rp1)/(ra2+rp1); pt = at*(1-et^2);
                D_v1 = sqrt(2*mu*(1/rp1-1/(2*at)))-sqrt(2*mu*(1/rp1-1/(2*ai)));
                D_v2 = sqrt(2*mu*(1/ra2-1/(2*af)))-sqrt(2*mu*(1/ra2-1/(2*at)));
            end

            i = deg2rad(app.iEditField_3.Value); OM = deg2rad(app.OMEditField_3.Value);
            mu = app.muEditField.Value;
            
            
            R3 = [cos(OM) sin(OM) 0; -sin(OM) cos(OM) 0; 0 0 1];
            R2 = [1 0 0; 0 cos(i) sin(i); 0 -sin(i) cos(i)];
            R1 = [cos(om_i) sin(om_i) 0; -sin(om_i) cos(om_i) 0; 0 0 1];
            R = R1*R2*R3;
            
            stepTh = pi/180;
            [r1,v1,th1] = kep2car(ai,ei,i,OM,om_i,th1_i:stepTh:th1_f,mu);
            [rt,vt,th_t] = kep2car(at,et,i,OM,om_t,tht_i:stepTh:tht_f,mu);
            [r3,v3,th3] = kep2car(af,ef,i,OM,om_f,th2_i:stepTh:th2_f,mu);
            D_v_car1 = D_v1 .* R'* [-sin(tht_i) cos(tht_i) 0]';
            app.D_v1EditField.Value=D_v1;
            vt(:,1) = vt(:,1) + D_v_car1;
            D_v_car2 = D_v2 .* R'* [-sin(tht_f) cos(tht_f) 0]';
            app.D_v2EditField.Value=D_v2;
            v3(:,1) = v3(:,1) + D_v_car2;
            Kep1 = [ai,ei,om_i]; Kept = [at,et,om_t]; Kep3 = [af,ef,om_f];
            transfer_elliptic_plot(app,r1,rt,r3,v1,vt,v3,th1,th_t,th3,Kep1,Kept,Kep3);
        end

        % Value changed function: useconstantsCheckBox
        function useconstantsCheckBoxValueChanged(app, event)
                        value = app.useconstantsCheckBox.Value;
                        if value == 1
                            app.a_iEditField.Value = app.aKmEditField_2.Value;
                            app.e_iEditField.Value = app.eEditField_2.Value;
                            app.om_iEditField.Value = app.omEditField_2.Value;
                            app.th_iEditField.Value = app.th_fEditField.Value;
                            app.iEditField_3.Value = app.iEditField_2.Value;
                            app.OMEditField_3.Value = app.OMEditField_2.Value;
                        end
        end

        % Value changed function: TransferButton
        function TransferButtonValueChanged(app, event)
            value = app.TransferButton.Value;
            if value == 1
                app.TabGroup2.Visible = "on";
            else
                app.TabGroup2.Visible = "off";
            end
        end

        % Selection changed function: ButtonGroup_2
        function ButtonGroup_2SelectionChanged(app, event)
            selectedButton = app.ButtonGroup_2.SelectedObject;
            if app.apogeapogeButton == selectedButton
                 app.om_fEditField.Value = app.om_iEditField.Value + 180;
                 app.th_iEditField.Value = 0;
                 app.th_fEditField_2.Value = 180;
            end
            if app.apogeperigeButton == selectedButton
                app.om_fEditField.Value = app.om_iEditField.Value;
                app.th_iEditField.Value = 180;
                app.th_fEditField_2.Value = 360;
            end
            if app.perigeapogeButton == selectedButton     
                app.om_fEditField.Value = app.om_iEditField.Value;
                app.th_iEditField.Value = 0;
                app.th_fEditField_2.Value = 180;
            end
            if app.perigeperigeButton == selectedButton
                app.om_fEditField.Value = app.om_iEditField.Value + 180;
                app.th_iEditField.Value = 180;
                 app.th_fEditField_2.Value = 360;
            end
        end

        % Value changed function: a_iEditField, e_iEditField, om_iEditField
        function e_iEditFieldValueChanged(app, event)
            
            if app.apogeapogeButton.Value == 1
                 app.om_fEditField.Value = app.om_iEditField.Value + 180;
                 app.th_iEditField.Value = 0;
                 app.th_fEditField_2.Value = 180;
            end
            if app.apogeperigeButton.Value == 1
                app.om_fEditField.Value = app.om_iEditField.Value;
                app.th_iEditField.Value = 180;
                app.th_fEditField_2.Value = 360;
            end
            if app.perigeapogeButton == 1
                app.om_fEditField.Value = app.om_iEditField.Value;
                app.th_iEditField.Value = 0;
                app.th_fEditField_2.Value = 180;
            end
            if app.perigeperigeButton.Value == 1
                app.om_fEditField.Value = app.om_iEditField.Value + 180;
                app.th_iEditField.Value = 180;
                app.th_fEditField_2.Value = 360;
            end
        end

        % Button down function: ButtonGroup_2
        function ButtonGroup_2ButtonDown(app, event)
            if app.apogeapogeButton.Value == 1
                 app.om_fEditField.Value = app.om_iEditField.Value + 180;
                 app.th_iEditField.Value = 0;
                 app.th_fEditField_2.Value = 180;
            end
        end

        % Value changed function: EllipticalbitangentButton
        function EllipticalbitangentButtonValueChanged(app, event)
            value = app.EllipticalbitangentButton.Value;
            if value == 1
                app.elliptical_bi_panel.Visible = "on";
            elseif value == 0
                app.elliptical_bi_panel.Visible = "off";
            end
        end

        % Value changed function: Delta_thEditField, OMEditField_2, 
        % ...and 7 other components
        function iEditField_2ValueChanged(app, event)
            
            v = [app.VxEditField.Value;app.VyEditField.Value;app.VzEditField.Value];
            r = [app.XEditField.Value;app.YEditField.Value;app.ZEditField.Value];
            app.rpEditField.Value = app.pEditField.Value/(1+app.EEditField.Value);
            app.raEditField.Value = app.pEditField.Value/(1-app.EEditField.Value);
            app.EEditField.Value = 0.5*norm(v)^2-app.muEditField.Value/norm(r);
            app.pEditField.Value = app.aKmEditField.Value*(1-app.eEditField.Value^2);
            app.hEditField_2.Value = norm(cross(r,v));
            app.bEditField.Value = app.aKmEditField.Value*sqrt(1-app.eEditField.Value^2);
        end

        % Button pushed function: Run_bielliptic
        function Run_biellipticPushed(app, event)
            hold(app.UIAxes,"off");
            err = 0;
            ei = app.e_iEditField_2.Value; ef = app.e_fEditField_2.Value;
            ai = app.a_iEditField_2.Value; af = app.a_fEditField_2.Value;
            
            om_i = deg2rad(app.om_iEditField_2.Value); 
            om_f = deg2rad(app.om_fEditField_2.Value);
            th_i = deg2rad(app.th_iEditField_2.Value); 
            th_f = deg2rad(app.th_fEditField_3.Value);
            if th_i > th_f
                th_f = th_f+2*pi;
            end
            i = deg2rad(app.iEditField_4.Value); OM = deg2rad(app.OMEditField_4.Value);
            mu = app.muEditField.Value;
            p1 = ai*(1-ei^2);
            p2 = af*(1-ef^2);
            rp1 = p1/(1+ei); ra1 = p1/(1-ei);
            rp2 = p2/(1+ef); ra2 = p2/(1-ef);
            if app.perigeButton.Value == 1
                th_i = 0;
                th_f = pi;
                ra_t = app.r_bEditField.Value;
                
                rp_t1 = rp1; at1 = (rp_t1+ra_t)/2; et1 = abs(ra_t-rp1)/(ra_t+rp1); 
                rp_t2 = rp2; at2 = (rp_t2+ra_t)/2; et2 = abs(ra_t-rp2)/(ra_t+rp2); 
                D_v1 = sqrt(2*mu*(1/rp1)-1/(2*at1))-sqrt(2*mu*(1/rp1-1/(2*ai)));
                D_v2 = sqrt(2*mu*(1/ra_t-1/(2*at2)))-sqrt(2*mu*(1/ra_t-1/(2*at1)));
                D_v3 = sqrt(2*mu*(1/rp2-1/(2*af)))-sqrt(2*mu*(1/rp2-1/(2*at2)));
                if ra_t < rp1 || ra_t < rp2
                    errordlg('Manovra non effettuabile!')
                    err = 1;
                end
            elseif app.apogeButton.Value == 1
                th_i = pi;
                th_f = 2*pi;
                rp_t = app.r_bEditField.Value;
                ra_t1 = ra1; at1 = (rp_t+ra_t1)/2; et1 = abs(ra_t1-rp_t)/(ra_t1+rp_t); 
                ra_t2 = ra2; at2 = (rp_t+ra_t2)/2; et2 = abs(ra_t2-rp_t)/(ra_t2+rp_t); 
                D_v1 = sqrt(2*mu*(1/ra1)-1/(2*at1))-sqrt(2*mu*(1/ra1-1/(2*ai)));
                D_v2 = sqrt(2*mu*(1/rp_t-1/(2*at2)))-sqrt(2*mu*(1/rp_t-1/(2*at1)));
                D_v3 = sqrt(2*mu*(1/ra2-1/(2*af)))-sqrt(2*mu*(1/ra2-1/(2*at2)));
                if ra_t1 < rp_t || ra_t2 < rp_t
                    errordlg('Manovra non effettuabile!')
                    err = 1;
                end
            end
            app.a_t1EditField.Value = at1;
            app.a_t2EditField.Value = at2;
                R3 = [cos(OM) sin(OM) 0; -sin(OM) cos(OM) 0; 0 0 1];
                R2 = [1 0 0; 0 cos(i) sin(i); 0 -sin(i) cos(i)];
                R1 = [cos(om_i) sin(om_i) 0; -sin(om_i) cos(om_i) 0; 0 0 1];
                R = R1*R2*R3;

                stepTh = pi/180;

om_t = om_i;
[r1,v1,th1] = kep2car(ai,ei,i,OM,om_i,0:stepTh:th_i+2*pi,mu);
D_v_car1 = D_v1 .* R'* [-sin(th_i) cos(th_i) 0]';
v1(:,end) = v1(:,end) + D_v_car1;

[rt1,vt1,th2] = kep2car(at1,et1,i,OM,om_t,th_i:stepTh:th_i+pi,mu);
D_v_car2 = D_v2 .* R'* [-sin(th_f) cos(th_f) 0]';
vt1(:,end) = vt1(:,end) + D_v_car2;
[rt2,vt2,th3] = kep2car(at2,et2,i,OM,om_t,th_i+pi:stepTh:th_i+2*pi,mu);
D_v_car3 = D_v3 .* R'* [-sin(th_f) cos(th_f) 0]';
vt2(:,end) = vt2(:,end) + D_v_car3;

[rf,vf,th4] = kep2car(af,ef,i,OM,om_f,th_i:stepTh:2*pi+th_i,mu);

tetha = [th1 th2 th3 th4];
%app.a_tEditField.Value = at; app.e_tEditField.Value = et;
r = [r1,rt1,rt2,rf]; vel = [v1,vt1,vt2,vf];
colort0 = length(r1(1,:))+1;
           colortf1 = length([r1(1,:) rt1(1,:)])+1;
           colortf2 = length([r1(1,:) rt1(1,:) rt2(1,:)])+1;
            Rt=6378;
                load('topo.mat','topo','topomap1');
                % whos topo topomap1
                contour(app.UIAxes,0:359,-89:90,topo,[0 0],'b')
                axis(app.UIAxes,'equal');
                % box on
                % set(gca,'XLim',[0 360],'YLim',[-90 90], ...
                %     'XTick',[0 60 120 180 240 300 360], ...
                %     'Ytick',[-90 -60 -30 0 30 60 90]);
                hold (app.UIAxes,"on")
                image(app.UIAxes,[0 360],[-90 90],topo,'CDataMapping', 'scaled');
                colormap(app.UIAxes,topomap1)
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
                surface(app.UIAxes,x*Rt,y*Rt,z*Rt,props);
                light(app.UIAxes,'position',[1 1 1]);
                light(app.UIAxes,'position',[-1.5 0.5 -0.5], 'color', [.6 .2 .2]);
            %%
            hold(app.UIAxes,"on");
            X = r(1,:); Y = r(2,:); Z = r(3,:);
            plot3(app.UIAxes,X,Y,Z,'Color',"none");
            grid(app.UIAxes,"on");
            
            % Define an indefinite plot
            v = ([45 30 30]);
            h = plot3(app.UIAxes,nan,nan,nan,'or','MarkerFaceColor',"#77AC30",'MarkerEdgeColor',"#77AC30",'MarkerSize',10);
            
            traj = plot3(app.UIAxes,nan,nan,nan,'Color',"#A2142F");
            view(app.UIAxes,v);
            % Define the step animation
            step_animation = 2;
            % Define the moving point
            
            %for j = 1 : app.norbitsEditField.Value
            j = 0;
            traj.ColorMode = 'manual';
            app.D_v1EditField_2.Value = D_v1;
            app.D_v2EditField_2.Value = D_v2;
            app.D_v3EditField.Value = D_v3;
            app.e_t1EditField.Value = et1;
            app.e_t2EditField.Value = et2;
            app.TimeEditField.Value = pi*(sqrt(at1^3/mu)+sqrt(at2^3/mu));
                while j < length(X) - 1 && err == 0
                    
                    j = j + step_animation;
                    set(traj,'XData',X(1:j),'YData',Y(1:j),'ZData',Z(1:j));
                    hold(app.UIAxes,"on");
                    set(h,'XData',X(j),'YData',Y(j),'ZData',Z(j));
                    drawnow
                    
                    
                    app.XEditField.Value = X(j);
                    app.YEditField.Value = Y(j);
                    app.ZEditField.Value = Z(j);
                    app.VxEditField.Value = vel(1,j);
                    app.VyEditField.Value = vel(2,j);
                    app.VzEditField.Value = vel(3,j);
                    app.thEditField.Value = rad2deg(tetha(j))-floor(rad2deg(tetha(j))/360)*360;
                    
                    if j < colort0
                        app.aKmEditField.Value = ai;
                        app.aKmEditField_2.Value = ai;
                        app.eEditField.Value = ei;
                        app.eEditField_2.Value = ei;
                        app.omEditField.Value = rad2deg(om_i);
                        app.omEditField_2.Value = rad2deg(om_i);
                        app.th_0EditField.Value = 0;
                        if th_i == 0
                            app.th_fEditField.Value = rad2deg(2*pi);
                        else
                            app.th_fEditField.Value = rad2deg(th_i);
                        end
                    elseif j >= colort0 && j < colortf1
                        app.aKmEditField.Value = at1;
                        app.aKmEditField_2.Value = at1;
                        app.eEditField.Value = et1;
                        app.eEditField_2.Value = et1;
                        app.omEditField.Value = rad2deg(om_t);
                        app.omEditField_2.Value = rad2deg(om_t);
                        if th_i >= 2*pi
                            app.th_0EditField.Value = rad2deg(th_i-2*pi);
                        else
                            app.th_0EditField.Value = rad2deg(th_i);
                        end
                            app.th_fEditField.Value = rad2deg(th_f-pi);
                    elseif j >= colortf1 && j < colortf2
                        app.aKmEditField.Value = at2;
                        app.aKmEditField_2.Value = at2;
                        app.eEditField.Value = et2;
                        app.eEditField_2.Value = et2;
                        app.omEditField.Value = rad2deg(om_f);
                        app.omEditField_2.Value = rad2deg(om_f);
                        
                        
                        app.th_fEditField.Value = rad2deg(th_f);
                    elseif j >= colortf2
                        app.aKmEditField.Value = af;
                        app.aKmEditField_2.Value = af;
                        app.eEditField.Value = ef;
                        app.eEditField_2.Value = ef;
                        app.omEditField.Value = rad2deg(om_f);
                        app.omEditField_2.Value = rad2deg(om_f);
                        
                    end
                    
                    app.iEditField.Value = app.iEditField_4.Value;
                    app.OMEditField.Value = app.OMEditField_4.Value;
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
                            app.thEditField.Value = rad2deg(tetha(j))-floor(rad2deg(tetha(j))/360)*360;
                            app.thEditField_2.Value = rad2deg(tetha(j))-floor(rad2deg(tetha(j))/360)*360;
  
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
                            app.thEditField.Value = rad2deg(tetha(j))-floor(rad2deg(tetha(j))/360)*360;
                            app.thEditField_2.Value = rad2deg(tetha(j))-floor(rad2deg(tetha(j))/360)*360;
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
                            app.thEditField.Value = rad2deg(tetha(j))-floor(rad2deg(tetha(j))/360)*360;
                            app.thEditField_2.Value = rad2deg(tetha(j))-floor(rad2deg(tetha(j))/360)*360;
                            set(traj,'XData',X(1:j),'YData',Y(1:j),'ZData',Z(1:j));
                            hold(app.UIAxes,"on");
                            set(h,'XData',X(j),'YData',Y(j),'ZData',Z(j));
                            drawnow
                    end
                    

                    pause(app.Delta_thEditField.Value/10);
                    if j == length(x)
                        return
                    end
                end
        end

        % Selection changed function: ButtonGroup_3
        function ButtonGroup_3SelectionChanged(app, event)
            selectedButton = app.ButtonGroup_3.SelectedObject;
            if selectedButton == app.perigeButton
                app.th_iEditField_2 = 0;
            elseif selectedButton == app.apogeButton

            end
        end

        % Value changed function: BiellipticButton
        function BiellipticButtonValueChanged(app, event)
            value = app.BiellipticButton.Value;
            if value == 1
                app.bielliptic.Visible = "on";   
            end
        end

        % Value changed function: useconstantsCheckBox_3
        function useconstantsCheckBox_3ValueChanged(app, event)
            value = app.useconstantsCheckBox_3.Value;
            if value == 1
                app.a_iEditField_3.Value = app.aKmEditField_2.Value;
                app.e_iEditField_3.Value = app.eEditField_2.Value;
                app.om_iEditField_3.Value = app.omEditField_2.Value;
                app.th_iEditField_3.Value = app.th_fEditField.Value;
                app.iEditField_5.Value = app.iEditField_2.Value;
                app.OMEditField_5.Value = app.OMEditField_2.Value;
            end
        end

        % Button pushed function: RunButton_4
        function RunButton_4Pushed(app, event)
            try
                flag = 0;
            cla(app.UIAxes,'reset') 
            clear("traj","h")
            clear("j","X","Y","Z")
            hold (app.UIAxes,"on")
            %hold(app.UIAxes,"off")
            ei = app.e_iEditField_3.Value; 
            ai = app.a_iEditField_3.Value; 
            i = deg2rad(app.iEditField_5.Value); 
            OM = deg2rad(app.OMEditField_5.Value);
            om_i = deg2rad(app.om_iEditField_3.Value);
            mu = app.muEditField.Value;
            om_f = deg2rad(app.om_fEditField_3.Value);
            delta_om = om_f-om_i;
            stepTh = pi/180;
            if app.pointaButton.Value == 1
                app.th_iEditField_3.Value = delta_om/2;
                app.th_fEditField_3.Value = 2*pi-delta_om/2;
                th1 = 0:stepTh:2*pi + delta_om/2;
                th2 = -delta_om/2:stepTh:2*pi-delta_om/2;
            elseif app.pointbButton.Value == 1
                app.th_iEditField_3.Value = pi + delta_om/2;
                app.th_fEditField_3.Value = pi-delta_om/2;
                th1 = 0:stepTh:3*pi+delta_om/2;
                th2 = pi-delta_om/2:stepTh:3*pi-delta_om/2;
            end
            
            app.e_fEditField_3.Value = ei;
            app.a_fEditField_3.Value = ai;
            
            [r1,v1,th1] = kep2car(ai,ei,i,OM,om_i,th1,mu);
            D_v = 2*sqrt(mu/(ai*(1-ei^2)))*ei*sin(delta_om/2);

            [r2,v2,th2] = kep2car(ai,ei,i,OM,om_f,th2,mu);
            D_v_car = v2(:,1)-v1(:,1);
            r = [r1 r2]; vel = [v1 v2]; tetha = [th1 th2];


            colort0 = length(r1(1,:))+1;
           
            Rt=6378;
                load('topo.mat','topo','topomap1');
                % whos topo topomap1
                contour(app.UIAxes,0:359,-89:90,topo,[0 0],'b')
                axis(app.UIAxes,'equal');
                % box on
                % set(gca,'XLim',[0 360],'YLim',[-90 90], ...
                %     'XTick',[0 60 120 180 240 300 360], ...
                %     'Ytick',[-90 -60 -30 0 30 60 90]);
                
                image(app.UIAxes,[0 360],[-90 90],topo,'CDataMapping', 'scaled');
                colormap(app.UIAxes,topomap1)
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
                surface(app.UIAxes,x*Rt,y*Rt,z*Rt,props);
                light(app.UIAxes,'position',[1 1 1]);
                light(app.UIAxes,'position',[-1.5 0.5 -0.5], 'color', [.6 .2 .2]);
            %%
            
            X = r(1,:); Y = r(2,:); Z = r(3,:);
            axis(app.UIAxes,[min(X)-Rt max(X)+Rt min(Y)-Rt max(Y)+Rt min(Z)-Rt max(Z)+Rt]);
            %plot3(app.UIAxes,X,Y,Z,'Color',"none");
            grid(app.UIAxes,"on");
            
            % Define an indefinite plot
            v = ([45 30 30]);
            h = plot3(app.UIAxes,nan,nan,nan,'or','MarkerFaceColor',"#77AC30",'MarkerEdgeColor',"#77AC30",'MarkerSize',10);
            
            traj = plot3(app.UIAxes,nan,nan,nan,'Color',"#A2142F");
                          
            view(app.UIAxes,v);
            % Define the step animation
            step_animation = 2;
            % Define the moving point
            
            %for j = 1 : app.norbitsEditField.Value
            j = 0;
            traj.ColorMode = 'manual';
            app.D_vEditField.Value = D_v;
            
            app.TimeEditField_3.Value = 0;
            colort0 = length(r1(1,:));
            
           
                while j < length(X) - 1 && flag == 0
                    
                    j = j + step_animation;
                    set(traj,'XData',X(1:j),'YData',Y(1:j),'ZData',Z(1:j));
                    %hold(app.UIAxes,"on");
                    set(h,'XData',X(j),'YData',Y(j),'ZData',Z(j));
                    drawnow
                    
                    
                    app.XEditField.Value = X(j);
                    app.YEditField.Value = Y(j);
                    app.ZEditField.Value = Z(j);
                    app.VxEditField.Value = vel(1,j);
                    app.VyEditField.Value = vel(2,j);
                    app.VzEditField.Value = vel(3,j);
                    app.thEditField.Value = rad2deg(tetha(j))-floor(rad2deg(tetha(j))/360)*360;
                    
                    if j < colort0
                        app.aKmEditField.Value = ai;
                        app.aKmEditField_2.Value = ai;
                        app.eEditField.Value = ei;
                        app.eEditField_2.Value = ei;
                        app.omEditField.Value = rad2deg(om_i);
                        app.omEditField_2.Value = rad2deg(om_i);
                        app.th_0EditField.Value = 0;
                        if app.pointaButton.Value == 1
                            app.th_iEditField.Value = rad2deg(0);
                            app.th_fEditField.Value = rad2deg(2*pi + delta_om/2);
                        elseif app.pointbButton.Value == 1
                            app.th_iEditField.Value = rad2deg(3*pi+delta_om/2);
                            app.th_fEditField.Value = rad2deg(2*pi-delta_om/2);
                        end
                    elseif j >= colort0 
                        app.omEditField.Value = rad2deg(om_f);
                        app.omEditField_2.Value = rad2deg(om_f);
                        if app.pointaButton.Value == 1
                            app.th_iEditField.Value = rad2deg(0);
                            app.th_fEditField.Value = rad2deg(2*pi + delta_om/2);
                        elseif app.pointbButton.Value == 1
                            app.th_iEditField.Value = rad2deg(-delta_om/2);
                            app.th_fEditField.Value = rad2deg(3*pi-delta_om/2);
                        end
                    end
                    
                    app.iEditField.Value = app.iEditField_5.Value;
                    app.OMEditField.Value = app.OMEditField_5.Value;
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
                            app.thEditField.Value = rad2deg(tetha(j))-floor(rad2deg(tetha(j))/360)*360;
                            app.thEditField_2.Value = rad2deg(tetha(j))-floor(rad2deg(tetha(j))/360)*360;
  
                            set(traj,'XData',X(1:j),'YData',Y(1:j),'ZData',Z(1:j));
                            
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
                            app.thEditField.Value = rad2deg(tetha(j))-floor(rad2deg(tetha(j))/360)*360;
                            app.thEditField_2.Value = rad2deg(tetha(j))-floor(rad2deg(tetha(j))/360)*360;
                            set(traj,'XData',X(1:j),'YData',Y(1:j),'ZData',Z(1:j));
                            
                            set(h,'XData',X(j),'YData',Y(j),'ZData',Z(j));
                            drawnow
                        end
                            app.XEditField.Value = X(j);
                            app.YEditField.Value = Y(j);
                            app.ZEditField.Value = Z(j);
                            app.VxEditField.Value = vel(1,j);
                            app.VyEditField.Value = vel(2,j);
                            app.VzEditField.Value = vel(3,j);
                            app.thEditField.Value = rad2deg(tetha(j))-floor(rad2deg(tetha(j))/360)*360;
                            app.thEditField_2.Value = rad2deg(tetha(j))-floor(rad2deg(tetha(j))/360)*360;
                            set(traj,'XData',X(1:j),'YData',Y(1:j),'ZData',Z(1:j));
                            
                            set(h,'XData',X(j),'YData',Y(j),'ZData',Z(j));
                            
                            
                            drawnow
                    end
                    

                    pause(app.Delta_thEditField.Value/10);
                                        
                end
            catch exception
                return
            end
        end

        % Value changed function: PeriapsisangleButton
        function PeriapsisangleButtonValueChanged(app, event)
            value = app.PeriapsisangleButton.Value;
            if value == 1
                app.periapsis.Visible = "on";
                app.bielliptic.Visible = "off";
                app.elliptical_bi_panel.Visible = "off";

                
            else
                app.periapsis.Visible = "off";
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            colormap(app.UIFigure, 'parula');
            app.UIFigure.Position = [100 100 925 754];
            app.UIFigure.Name = 'MATLAB App';
            app.UIFigure.CloseRequestFcn = createCallbackFcn(app, @UIFigureCloseRequest, true);
            app.UIFigure.BusyAction = 'cancel';

            % Create UIAxes
            app.UIAxes = uiaxes(app.UIFigure);
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.ButtonDownFcn = createCallbackFcn(app, @UIAxesButtonDown, true);
            app.UIAxes.BusyAction = 'cancel';
            app.UIAxes.Position = [1 410 482 333];

            % Create Label
            app.Label = uilabel(app.UIFigure);
            app.Label.BackgroundColor = [0.8 0.8 0.8];
            app.Label.Position = [495 380 256 343];
            app.Label.Text = '';

            % Create CreatedbyFrancescoNuzzoLabel
            app.CreatedbyFrancescoNuzzoLabel = uilabel(app.UIFigure);
            app.CreatedbyFrancescoNuzzoLabel.BackgroundColor = [0.902 0.902 0.902];
            app.CreatedbyFrancescoNuzzoLabel.HorizontalAlignment = 'center';
            app.CreatedbyFrancescoNuzzoLabel.FontColor = [0.502 0.502 0.502];
            app.CreatedbyFrancescoNuzzoLabel.Position = [507 393 232 320];
            app.CreatedbyFrancescoNuzzoLabel.Text = 'Created by Francesco Nuzzo';

            % Create ConversionsPanel
            app.ConversionsPanel = uipanel(app.UIFigure);
            app.ConversionsPanel.Title = 'Conversions';
            app.ConversionsPanel.Visible = 'off';
            app.ConversionsPanel.ButtonDownFcn = createCallbackFcn(app, @ConversionsPanelButtonDown, true);
            app.ConversionsPanel.Position = [496 374 256 345];

            % Create aKmEditFieldLabel
            app.aKmEditFieldLabel = uilabel(app.ConversionsPanel);
            app.aKmEditFieldLabel.HorizontalAlignment = 'right';
            app.aKmEditFieldLabel.Position = [16 245 39 22];
            app.aKmEditFieldLabel.Text = 'a [Km]';

            % Create aKmEditField
            app.aKmEditField = uieditfield(app.ConversionsPanel, 'numeric');
            app.aKmEditField.ValueChangedFcn = createCallbackFcn(app, @aKmEditFieldValueChanged, true);
            app.aKmEditField.Position = [70 245 44 22];

            % Create omLabel
            app.omLabel = uilabel(app.ConversionsPanel);
            app.omLabel.HorizontalAlignment = 'right';
            app.omLabel.Position = [19 123 36 22];
            app.omLabel.Text = 'om [°]';

            % Create omEditField
            app.omEditField = uieditfield(app.ConversionsPanel, 'numeric');
            app.omEditField.Position = [70 123 44 22];

            % Create iLabel
            app.iLabel = uilabel(app.ConversionsPanel);
            app.iLabel.HorizontalAlignment = 'right';
            app.iLabel.Position = [30 182 25 22];
            app.iLabel.Text = 'i [°]';

            % Create iEditField
            app.iEditField = uieditfield(app.ConversionsPanel, 'numeric');
            app.iEditField.Position = [70 182 44 22];

            % Create OMLabel
            app.OMLabel = uilabel(app.ConversionsPanel);
            app.OMLabel.HorizontalAlignment = 'right';
            app.OMLabel.Position = [15 151 39 22];
            app.OMLabel.Text = 'OM [°]';

            % Create OMEditField
            app.OMEditField = uieditfield(app.ConversionsPanel, 'numeric');
            app.OMEditField.Position = [70 151 44 22];

            % Create eEditFieldLabel
            app.eEditFieldLabel = uilabel(app.ConversionsPanel);
            app.eEditFieldLabel.HorizontalAlignment = 'right';
            app.eEditFieldLabel.Position = [30 214 25 22];
            app.eEditFieldLabel.Text = 'e';

            % Create eEditField
            app.eEditField = uieditfield(app.ConversionsPanel, 'numeric');
            app.eEditField.ValueChangedFcn = createCallbackFcn(app, @eEditFieldValueChanged, true);
            app.eEditField.Position = [70 214 44 22];

            % Create thLabel
            app.thLabel = uilabel(app.ConversionsPanel);
            app.thLabel.HorizontalAlignment = 'right';
            app.thLabel.Position = [25 95 30 22];
            app.thLabel.Text = 'th [°]';

            % Create thEditField
            app.thEditField = uieditfield(app.ConversionsPanel, 'numeric');
            app.thEditField.Position = [70 95 44 22];

            % Create YEditFieldLabel
            app.YEditFieldLabel = uilabel(app.ConversionsPanel);
            app.YEditFieldLabel.HorizontalAlignment = 'right';
            app.YEditFieldLabel.Position = [117 214 25 22];
            app.YEditFieldLabel.Text = 'Y';

            % Create YEditField
            app.YEditField = uieditfield(app.ConversionsPanel, 'numeric');
            app.YEditField.Position = [156 214 79 22];

            % Create ZEditFieldLabel
            app.ZEditFieldLabel = uilabel(app.ConversionsPanel);
            app.ZEditFieldLabel.HorizontalAlignment = 'right';
            app.ZEditFieldLabel.Position = [117 186 25 22];
            app.ZEditFieldLabel.Text = 'Z';

            % Create ZEditField
            app.ZEditField = uieditfield(app.ConversionsPanel, 'numeric');
            app.ZEditField.Position = [156 186 79 22];

            % Create VxEditFieldLabel
            app.VxEditFieldLabel = uilabel(app.ConversionsPanel);
            app.VxEditFieldLabel.HorizontalAlignment = 'right';
            app.VxEditFieldLabel.Position = [117 155 25 22];
            app.VxEditFieldLabel.Text = 'V x';

            % Create VxEditField
            app.VxEditField = uieditfield(app.ConversionsPanel, 'numeric');
            app.VxEditField.Position = [156 155 79 22];

            % Create VyEditField_2Label
            app.VyEditField_2Label = uilabel(app.ConversionsPanel);
            app.VyEditField_2Label.HorizontalAlignment = 'right';
            app.VyEditField_2Label.Position = [117 123 25 22];
            app.VyEditField_2Label.Text = 'V y';

            % Create VyEditField
            app.VyEditField = uieditfield(app.ConversionsPanel, 'numeric');
            app.VyEditField.Position = [156 123 79 22];

            % Create VzEditFieldLabel
            app.VzEditFieldLabel = uilabel(app.ConversionsPanel);
            app.VzEditFieldLabel.HorizontalAlignment = 'right';
            app.VzEditFieldLabel.Position = [117 95 25 22];
            app.VzEditFieldLabel.Text = 'V z';

            % Create VzEditField
            app.VzEditField = uieditfield(app.ConversionsPanel, 'numeric');
            app.VzEditField.Position = [156 95 79 22];

            % Create ButtonGroup
            app.ButtonGroup = uibuttongroup(app.ConversionsPanel);
            app.ButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @ButtonGroupSelectionChanged, true);
            app.ButtonGroup.BorderType = 'none';
            app.ButtonGroup.Position = [38 275 196 47];

            % Create CartoKepButton
            app.CartoKepButton = uiradiobutton(app.ButtonGroup);
            app.CartoKepButton.Text = 'Car to Kep';
            app.CartoKepButton.Position = [119 9 80 22];
            app.CartoKepButton.Value = true;

            % Create KeptoCarButton
            app.KeptoCarButton = uiradiobutton(app.ButtonGroup);
            app.KeptoCarButton.Text = 'Kep to Car';
            app.KeptoCarButton.Position = [3 9 80 22];

            % Create XEditFieldLabel
            app.XEditFieldLabel = uilabel(app.ConversionsPanel);
            app.XEditFieldLabel.HorizontalAlignment = 'right';
            app.XEditFieldLabel.Position = [117 245 25 22];
            app.XEditFieldLabel.Text = 'X';

            % Create XEditField
            app.XEditField = uieditfield(app.ConversionsPanel, 'numeric');
            app.XEditField.Position = [156 245 79 22];

            % Create PasteintoConstantsCheckBox
            app.PasteintoConstantsCheckBox = uicheckbox(app.ConversionsPanel);
            app.PasteintoConstantsCheckBox.ValueChangedFcn = createCallbackFcn(app, @PasteintoConstantsCheckBoxValueChanged, true);
            app.PasteintoConstantsCheckBox.Text = ' Paste into Constants';
            app.PasteintoConstantsCheckBox.Position = [67 53 137 22];

            % Create RunButton
            app.RunButton = uibutton(app.ConversionsPanel, 'push');
            app.RunButton.ButtonPushedFcn = createCallbackFcn(app, @RunButtonPushed, true);
            app.RunButton.IconAlignment = 'top';
            app.RunButton.Position = [100 22 72 23];
            app.RunButton.Text = 'Run';

            % Create Panel
            app.Panel = uipanel(app.UIFigure);
            app.Panel.AutoResizeChildren = 'off';
            app.Panel.Title = 'Panel';
            app.Panel.BusyAction = 'cancel';
            app.Panel.Position = [100 199 260 172];

            % Create CoordinatesButton
            app.CoordinatesButton = uibutton(app.Panel, 'push');
            app.CoordinatesButton.ButtonPushedFcn = createCallbackFcn(app, @CoordinatesButtonPushed, true);
            app.CoordinatesButton.Position = [140 121 100 23];
            app.CoordinatesButton.Text = 'Coordinates';

            % Create ConstansButton
            app.ConstansButton = uibutton(app.Panel, 'push');
            app.ConstansButton.ButtonPushedFcn = createCallbackFcn(app, @ConstansButtonPushed, true);
            app.ConstansButton.Position = [23 121 100 23];
            app.ConstansButton.Text = 'Constans';

            % Create StateButton
            app.StateButton = uibutton(app.Panel, 'push');
            app.StateButton.ButtonPushedFcn = createCallbackFcn(app, @StateButtonPushed, true);
            app.StateButton.Position = [23 78 100 23];
            app.StateButton.Text = 'State';

            % Create AnimationButton
            app.AnimationButton = uibutton(app.Panel, 'push');
            app.AnimationButton.ButtonPushedFcn = createCallbackFcn(app, @AnimationButtonPushed, true);
            app.AnimationButton.Position = [140 78 100 23];
            app.AnimationButton.Text = 'Animation';

            % Create norbitsEditFieldLabel
            app.norbitsEditFieldLabel = uilabel(app.Panel);
            app.norbitsEditFieldLabel.HorizontalAlignment = 'right';
            app.norbitsEditFieldLabel.Position = [142 39 45 22];
            app.norbitsEditFieldLabel.Text = 'n orbits';

            % Create norbitsEditField
            app.norbitsEditField = uieditfield(app.Panel, 'numeric');
            app.norbitsEditField.Position = [205 39 37 22];
            app.norbitsEditField.Value = 1;

            % Create Button_3
            app.Button_3 = uibutton(app.Panel, 'state');
            app.Button_3.ValueChangedFcn = createCallbackFcn(app, @Button_3ValueChanged, true);
            app.Button_3.Text = '||';
            app.Button_3.Position = [177 4 29 23];

            % Create Button_4
            app.Button_4 = uibutton(app.Panel, 'state');
            app.Button_4.ValueChangedFcn = createCallbackFcn(app, @Button_4ValueChanged, true);
            app.Button_4.Text = '<<';
            app.Button_4.Position = [142 4 29 23];

            % Create Button_5
            app.Button_5 = uibutton(app.Panel, 'state');
            app.Button_5.Text = '>>';
            app.Button_5.Position = [213 4 29 23];

            % Create TransferButton
            app.TransferButton = uibutton(app.Panel, 'state');
            app.TransferButton.ValueChangedFcn = createCallbackFcn(app, @TransferButtonValueChanged, true);
            app.TransferButton.Text = 'Transfer';
            app.TransferButton.Position = [23 41 100 23];

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Visible = 'off';
            app.TabGroup.Position = [495 381 256 342];

            % Create InputTab
            app.InputTab = uitab(app.TabGroup);
            app.InputTab.Title = 'Input';

            % Create muEditFieldLabel
            app.muEditFieldLabel = uilabel(app.InputTab);
            app.muEditFieldLabel.HorizontalAlignment = 'right';
            app.muEditFieldLabel.Position = [14 281 25 22];
            app.muEditFieldLabel.Text = 'mu';

            % Create muEditField
            app.muEditField = uieditfield(app.InputTab, 'numeric');
            app.muEditField.ValueChangedFcn = createCallbackFcn(app, @iEditField_2ValueChanged, true);
            app.muEditField.Position = [61 281 81 22];
            app.muEditField.Value = 398600.433;

            % Create th_0EditFieldLabel
            app.th_0EditFieldLabel = uilabel(app.InputTab);
            app.th_0EditFieldLabel.HorizontalAlignment = 'right';
            app.th_0EditFieldLabel.Position = [18 249 28 22];
            app.th_0EditFieldLabel.Text = 'th_0';

            % Create th_0EditField
            app.th_0EditField = uieditfield(app.InputTab, 'numeric');
            app.th_0EditField.ValueChangedFcn = createCallbackFcn(app, @iEditField_2ValueChanged, true);
            app.th_0EditField.Position = [67 249 44 22];

            % Create th_fEditFieldLabel
            app.th_fEditFieldLabel = uilabel(app.InputTab);
            app.th_fEditFieldLabel.HorizontalAlignment = 'right';
            app.th_fEditFieldLabel.Position = [143 249 25 22];
            app.th_fEditFieldLabel.Text = 'th_f';

            % Create th_fEditField
            app.th_fEditField = uieditfield(app.InputTab, 'numeric');
            app.th_fEditField.ValueChangedFcn = createCallbackFcn(app, @iEditField_2ValueChanged, true);
            app.th_fEditField.Position = [190 249 44 22];

            % Create aKmEditField_2Label
            app.aKmEditField_2Label = uilabel(app.InputTab);
            app.aKmEditField_2Label.HorizontalAlignment = 'right';
            app.aKmEditField_2Label.Position = [13 217 39 22];
            app.aKmEditField_2Label.Text = 'a [Km]';

            % Create aKmEditField_2
            app.aKmEditField_2 = uieditfield(app.InputTab, 'numeric');
            app.aKmEditField_2.ValueChangedFcn = createCallbackFcn(app, @iEditField_2ValueChanged, true);
            app.aKmEditField_2.Position = [67 217 44 22];

            % Create iEditField_2Label
            app.iEditField_2Label = uilabel(app.InputTab);
            app.iEditField_2Label.HorizontalAlignment = 'right';
            app.iEditField_2Label.Position = [27 154 25 22];
            app.iEditField_2Label.Text = 'i [°]';

            % Create iEditField_2
            app.iEditField_2 = uieditfield(app.InputTab, 'numeric');
            app.iEditField_2.ValueChangedFcn = createCallbackFcn(app, @iEditField_2ValueChanged, true);
            app.iEditField_2.Position = [67 154 44 22];

            % Create OMEditField_2Label
            app.OMEditField_2Label = uilabel(app.InputTab);
            app.OMEditField_2Label.HorizontalAlignment = 'right';
            app.OMEditField_2Label.Position = [12 123 39 22];
            app.OMEditField_2Label.Text = 'OM [°]';

            % Create OMEditField_2
            app.OMEditField_2 = uieditfield(app.InputTab, 'numeric');
            app.OMEditField_2.ValueChangedFcn = createCallbackFcn(app, @iEditField_2ValueChanged, true);
            app.OMEditField_2.Position = [67 123 44 22];

            % Create eEditField_2Label
            app.eEditField_2Label = uilabel(app.InputTab);
            app.eEditField_2Label.HorizontalAlignment = 'right';
            app.eEditField_2Label.Position = [27 186 25 22];
            app.eEditField_2Label.Text = 'e';

            % Create eEditField_2
            app.eEditField_2 = uieditfield(app.InputTab, 'numeric');
            app.eEditField_2.ValueChangedFcn = createCallbackFcn(app, @iEditField_2ValueChanged, true);
            app.eEditField_2.Position = [67 186 44 22];

            % Create thEditField_2Label
            app.thEditField_2Label = uilabel(app.InputTab);
            app.thEditField_2Label.HorizontalAlignment = 'right';
            app.thEditField_2Label.Position = [22 67 30 22];
            app.thEditField_2Label.Text = 'th [°]';

            % Create thEditField_2
            app.thEditField_2 = uieditfield(app.InputTab, 'numeric');
            app.thEditField_2.Position = [67 67 44 22];

            % Create Delta_thEditFieldLabel
            app.Delta_thEditFieldLabel = uilabel(app.InputTab);
            app.Delta_thEditFieldLabel.HorizontalAlignment = 'right';
            app.Delta_thEditFieldLabel.Position = [118 217 49 22];
            app.Delta_thEditFieldLabel.Text = 'Delta_th';

            % Create Delta_thEditField
            app.Delta_thEditField = uieditfield(app.InputTab, 'numeric');
            app.Delta_thEditField.ValueChangedFcn = createCallbackFcn(app, @iEditField_2ValueChanged, true);
            app.Delta_thEditField.Position = [185 217 54 22];
            app.Delta_thEditField.Value = 0.0174532925199433;

            % Create omEditField_2Label
            app.omEditField_2Label = uilabel(app.InputTab);
            app.omEditField_2Label.HorizontalAlignment = 'right';
            app.omEditField_2Label.Position = [16 95 36 22];
            app.omEditField_2Label.Text = 'om [°]';

            % Create omEditField_2
            app.omEditField_2 = uieditfield(app.InputTab, 'numeric');
            app.omEditField_2.ValueChangedFcn = createCallbackFcn(app, @iEditField_2ValueChanged, true);
            app.omEditField_2.Position = [67 95 44 22];

            % Create OtherconstantsTab
            app.OtherconstantsTab = uitab(app.TabGroup);
            app.OtherconstantsTab.Title = 'Other constants';

            % Create GridLayout
            app.GridLayout = uigridlayout(app.OtherconstantsTab);
            app.GridLayout.ColumnWidth = {'1x', '1x', '1x'};
            app.GridLayout.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x'};

            % Create EEditFieldLabel
            app.EEditFieldLabel = uilabel(app.GridLayout);
            app.EEditFieldLabel.HorizontalAlignment = 'right';
            app.EEditFieldLabel.Layout.Row = 1;
            app.EEditFieldLabel.Layout.Column = 1;
            app.EEditFieldLabel.Text = 'E';

            % Create EEditField
            app.EEditField = uieditfield(app.GridLayout, 'numeric');
            app.EEditField.Editable = 'off';
            app.EEditField.Layout.Row = 1;
            app.EEditField.Layout.Column = 2;

            % Create pEditFieldLabel
            app.pEditFieldLabel = uilabel(app.GridLayout);
            app.pEditFieldLabel.HorizontalAlignment = 'right';
            app.pEditFieldLabel.Layout.Row = 2;
            app.pEditFieldLabel.Layout.Column = 1;
            app.pEditFieldLabel.Text = 'p';

            % Create pEditField
            app.pEditField = uieditfield(app.GridLayout, 'numeric');
            app.pEditField.Editable = 'off';
            app.pEditField.Layout.Row = 2;
            app.pEditField.Layout.Column = 2;

            % Create hLabel
            app.hLabel = uilabel(app.GridLayout);
            app.hLabel.HorizontalAlignment = 'right';
            app.hLabel.Layout.Row = 3;
            app.hLabel.Layout.Column = 1;
            app.hLabel.Text = '|h|';

            % Create hEditField_2
            app.hEditField_2 = uieditfield(app.GridLayout, 'numeric');
            app.hEditField_2.Editable = 'off';
            app.hEditField_2.Layout.Row = 3;
            app.hEditField_2.Layout.Column = 2;

            % Create bEditFieldLabel
            app.bEditFieldLabel = uilabel(app.GridLayout);
            app.bEditFieldLabel.HorizontalAlignment = 'right';
            app.bEditFieldLabel.Layout.Row = 4;
            app.bEditFieldLabel.Layout.Column = 1;
            app.bEditFieldLabel.Text = 'b';

            % Create bEditField
            app.bEditField = uieditfield(app.GridLayout, 'numeric');
            app.bEditField.Editable = 'off';
            app.bEditField.Layout.Row = 4;
            app.bEditField.Layout.Column = 2;

            % Create rpEditFieldLabel
            app.rpEditFieldLabel = uilabel(app.GridLayout);
            app.rpEditFieldLabel.HorizontalAlignment = 'right';
            app.rpEditFieldLabel.Layout.Row = 5;
            app.rpEditFieldLabel.Layout.Column = 1;
            app.rpEditFieldLabel.Text = 'rp';

            % Create rpEditField
            app.rpEditField = uieditfield(app.GridLayout, 'numeric');
            app.rpEditField.Editable = 'off';
            app.rpEditField.Layout.Row = 5;
            app.rpEditField.Layout.Column = 2;

            % Create raEditFieldLabel
            app.raEditFieldLabel = uilabel(app.GridLayout);
            app.raEditFieldLabel.HorizontalAlignment = 'right';
            app.raEditFieldLabel.Layout.Row = 6;
            app.raEditFieldLabel.Layout.Column = 1;
            app.raEditFieldLabel.Text = 'ra';

            % Create raEditField
            app.raEditField = uieditfield(app.GridLayout, 'numeric');
            app.raEditField.Editable = 'off';
            app.raEditField.Layout.Row = 6;
            app.raEditField.Layout.Column = 2;

            % Create TabGroup2
            app.TabGroup2 = uitabgroup(app.UIFigure);
            app.TabGroup2.Visible = 'off';
            app.TabGroup2.Position = [100 43 260 115];

            % Create ImpulseTab
            app.ImpulseTab = uitab(app.TabGroup2);
            app.ImpulseTab.Title = '1 Impulse';

            % Create PeriapsisangleButton
            app.PeriapsisangleButton = uibutton(app.ImpulseTab, 'state');
            app.PeriapsisangleButton.ValueChangedFcn = createCallbackFcn(app, @PeriapsisangleButtonValueChanged, true);
            app.PeriapsisangleButton.Text = 'Periapsis angle';
            app.PeriapsisangleButton.Position = [41 58 100 23];

            % Create ImpulsesTab_2
            app.ImpulsesTab_2 = uitab(app.TabGroup2);
            app.ImpulsesTab_2.Title = '2 Impulses';

            % Create EllipticalbitangentButton
            app.EllipticalbitangentButton = uibutton(app.ImpulsesTab_2, 'state');
            app.EllipticalbitangentButton.ValueChangedFcn = createCallbackFcn(app, @EllipticalbitangentButtonValueChanged, true);
            app.EllipticalbitangentButton.Text = 'Elliptical bitangent';
            app.EllipticalbitangentButton.Position = [8 50 113 23];

            % Create ImpulsesTab_3
            app.ImpulsesTab_3 = uitab(app.TabGroup2);
            app.ImpulsesTab_3.Title = '3 Impulses';

            % Create BiellipticButton
            app.BiellipticButton = uibutton(app.ImpulsesTab_3, 'state');
            app.BiellipticButton.ValueChangedFcn = createCallbackFcn(app, @BiellipticButtonValueChanged, true);
            app.BiellipticButton.Text = 'Bielliptic';
            app.BiellipticButton.Position = [21 58 100 23];

            % Create periapsis
            app.periapsis = uipanel(app.UIFigure);
            app.periapsis.Visible = 'off';
            app.periapsis.BusyAction = 'cancel';
            app.periapsis.Position = [366 80 514 301];

            % Create FirstorbitLabel_3
            app.FirstorbitLabel_3 = uilabel(app.periapsis);
            app.FirstorbitLabel_3.Position = [13 269 56 22];
            app.FirstorbitLabel_3.Text = 'First orbit';

            % Create FinalorbitLabel_3
            app.FinalorbitLabel_3 = uilabel(app.periapsis);
            app.FinalorbitLabel_3.Position = [397 264 58 22];
            app.FinalorbitLabel_3.Text = 'Final orbit';

            % Create RunButton_4
            app.RunButton_4 = uibutton(app.periapsis, 'push');
            app.RunButton_4.ButtonPushedFcn = createCallbackFcn(app, @RunButton_4Pushed, true);
            app.RunButton_4.BusyAction = 'cancel';
            app.RunButton_4.Position = [204 172 100 23];
            app.RunButton_4.Text = 'Run';

            % Create useconstantsCheckBox_3
            app.useconstantsCheckBox_3 = uicheckbox(app.periapsis);
            app.useconstantsCheckBox_3.ValueChangedFcn = createCallbackFcn(app, @useconstantsCheckBox_3ValueChanged, true);
            app.useconstantsCheckBox_3.Text = 'use constants';
            app.useconstantsCheckBox_3.Position = [210 269 97 22];

            % Create ButtonGroup_4
            app.ButtonGroup_4 = uibuttongroup(app.periapsis);
            app.ButtonGroup_4.BorderType = 'none';
            app.ButtonGroup_4.BusyAction = 'cancel';
            app.ButtonGroup_4.Position = [170 72 127 90];

            % Create pointaButton
            app.pointaButton = uiradiobutton(app.ButtonGroup_4);
            app.pointaButton.Text = 'point a';
            app.pointaButton.Position = [11 68 59 22];
            app.pointaButton.Value = true;

            % Create pointbButton
            app.pointbButton = uiradiobutton(app.ButtonGroup_4);
            app.pointbButton.Text = 'point b';
            app.pointbButton.Position = [11 47 60 22];

            % Create a_iEditField_3Label
            app.a_iEditField_3Label = uilabel(app.periapsis);
            app.a_iEditField_3Label.HorizontalAlignment = 'right';
            app.a_iEditField_3Label.Position = [13 243 25 22];
            app.a_iEditField_3Label.Text = 'a_i';

            % Create a_iEditField_3
            app.a_iEditField_3 = uieditfield(app.periapsis, 'numeric');
            app.a_iEditField_3.Position = [55 243 40 22];

            % Create e_iEditField_3Label
            app.e_iEditField_3Label = uilabel(app.periapsis);
            app.e_iEditField_3Label.HorizontalAlignment = 'right';
            app.e_iEditField_3Label.Position = [15 213 25 22];
            app.e_iEditField_3Label.Text = 'e_i';

            % Create e_iEditField_3
            app.e_iEditField_3 = uieditfield(app.periapsis, 'numeric');
            app.e_iEditField_3.Position = [55 213 40 22];

            % Create om_iEditField_3Label
            app.om_iEditField_3Label = uilabel(app.periapsis);
            app.om_iEditField_3Label.HorizontalAlignment = 'right';
            app.om_iEditField_3Label.Position = [9 182 31 22];
            app.om_iEditField_3Label.Text = 'om_i';

            % Create om_iEditField_3
            app.om_iEditField_3 = uieditfield(app.periapsis, 'numeric');
            app.om_iEditField_3.Position = [55 182 40 22];

            % Create a_fEditField_3Label
            app.a_fEditField_3Label = uilabel(app.periapsis);
            app.a_fEditField_3Label.HorizontalAlignment = 'right';
            app.a_fEditField_3Label.Position = [385 168 25 22];
            app.a_fEditField_3Label.Text = 'a_f';

            % Create a_fEditField_3
            app.a_fEditField_3 = uieditfield(app.periapsis, 'numeric');
            app.a_fEditField_3.Editable = 'off';
            app.a_fEditField_3.Position = [427 168 40 22];

            % Create e_fEditField_3Label
            app.e_fEditField_3Label = uilabel(app.periapsis);
            app.e_fEditField_3Label.HorizontalAlignment = 'right';
            app.e_fEditField_3Label.Position = [387 138 25 22];
            app.e_fEditField_3Label.Text = 'e_f';

            % Create e_fEditField_3
            app.e_fEditField_3 = uieditfield(app.periapsis, 'numeric');
            app.e_fEditField_3.Editable = 'off';
            app.e_fEditField_3.Position = [427 138 40 22];

            % Create om_fEditField_3Label
            app.om_fEditField_3Label = uilabel(app.periapsis);
            app.om_fEditField_3Label.HorizontalAlignment = 'right';
            app.om_fEditField_3Label.Position = [377 234 32 22];
            app.om_fEditField_3Label.Text = 'om_f';

            % Create om_fEditField_3
            app.om_fEditField_3 = uieditfield(app.periapsis, 'numeric');
            app.om_fEditField_3.Position = [424 234 40 22];

            % Create th_fEditField_4Label
            app.th_fEditField_4Label = uilabel(app.periapsis);
            app.th_fEditField_4Label.HorizontalAlignment = 'right';
            app.th_fEditField_4Label.Position = [385 101 25 22];
            app.th_fEditField_4Label.Text = 'th_f';

            % Create th_fEditField_4
            app.th_fEditField_4 = uieditfield(app.periapsis, 'numeric');
            app.th_fEditField_4.Editable = 'off';
            app.th_fEditField_4.Position = [425 101 40 22];
            app.th_fEditField_4.Value = 180;

            % Create D_vEditFieldLabel
            app.D_vEditFieldLabel = uilabel(app.periapsis);
            app.D_vEditFieldLabel.HorizontalAlignment = 'right';
            app.D_vEditFieldLabel.Position = [385 55 25 22];
            app.D_vEditFieldLabel.Text = 'D_v';

            % Create D_vEditField
            app.D_vEditField = uieditfield(app.periapsis, 'numeric');
            app.D_vEditField.Editable = 'off';
            app.D_vEditField.Position = [425 55 40 22];

            % Create TimeEditField_3Label
            app.TimeEditField_3Label = uilabel(app.periapsis);
            app.TimeEditField_3Label.HorizontalAlignment = 'right';
            app.TimeEditField_3Label.Position = [192 34 31 22];
            app.TimeEditField_3Label.Text = 'Time';

            % Create TimeEditField_3
            app.TimeEditField_3 = uieditfield(app.periapsis, 'numeric');
            app.TimeEditField_3.Editable = 'off';
            app.TimeEditField_3.Position = [238 34 40 22];

            % Create iEditField_5Label
            app.iEditField_5Label = uilabel(app.periapsis);
            app.iEditField_5Label.HorizontalAlignment = 'right';
            app.iEditField_5Label.Position = [201 239 25 22];
            app.iEditField_5Label.Text = 'i';

            % Create iEditField_5
            app.iEditField_5 = uieditfield(app.periapsis, 'numeric');
            app.iEditField_5.Position = [236 239 40 22];

            % Create OMEditField_5Label
            app.OMEditField_5Label = uilabel(app.periapsis);
            app.OMEditField_5Label.HorizontalAlignment = 'right';
            app.OMEditField_5Label.Position = [201 206 25 22];
            app.OMEditField_5Label.Text = 'OM';

            % Create OMEditField_5
            app.OMEditField_5 = uieditfield(app.periapsis, 'numeric');
            app.OMEditField_5.Position = [236 206 40 22];

            % Create th_iEditField_3Label
            app.th_iEditField_3Label = uilabel(app.periapsis);
            app.th_iEditField_3Label.HorizontalAlignment = 'right';
            app.th_iEditField_3Label.Position = [15 133 25 22];
            app.th_iEditField_3Label.Text = 'th_i';

            % Create th_iEditField_3
            app.th_iEditField_3 = uieditfield(app.periapsis, 'numeric');
            app.th_iEditField_3.Editable = 'off';
            app.th_iEditField_3.Position = [55 133 40 22];

            % Create elliptical_bi_panel
            app.elliptical_bi_panel = uipanel(app.UIFigure);
            app.elliptical_bi_panel.Visible = 'off';
            app.elliptical_bi_panel.BusyAction = 'cancel';
            app.elliptical_bi_panel.Position = [363 72 390 284];

            % Create FirstorbitLabel
            app.FirstorbitLabel = uilabel(app.elliptical_bi_panel);
            app.FirstorbitLabel.Position = [13 252 56 22];
            app.FirstorbitLabel.Text = 'First orbit';

            % Create FinalorbitLabel
            app.FinalorbitLabel = uilabel(app.elliptical_bi_panel);
            app.FinalorbitLabel.Position = [296 248 58 22];
            app.FinalorbitLabel.Text = 'Final orbit';

            % Create TransferorbitLabel
            app.TransferorbitLabel = uilabel(app.elliptical_bi_panel);
            app.TransferorbitLabel.Position = [25 93 76 22];
            app.TransferorbitLabel.Text = 'Transfer orbit';

            % Create Run_elliptical
            app.Run_elliptical = uibutton(app.elliptical_bi_panel, 'push');
            app.Run_elliptical.ButtonPushedFcn = createCallbackFcn(app, @Run_ellipticalPushed, true);
            app.Run_elliptical.BusyAction = 'cancel';
            app.Run_elliptical.Position = [136 155 100 23];
            app.Run_elliptical.Text = 'Run';

            % Create useconstantsCheckBox
            app.useconstantsCheckBox = uicheckbox(app.elliptical_bi_panel);
            app.useconstantsCheckBox.ValueChangedFcn = createCallbackFcn(app, @useconstantsCheckBoxValueChanged, true);
            app.useconstantsCheckBox.Text = 'use constants';
            app.useconstantsCheckBox.Position = [142 252 97 22];

            % Create ButtonGroup_2
            app.ButtonGroup_2 = uibuttongroup(app.elliptical_bi_panel);
            app.ButtonGroup_2.SelectionChangedFcn = createCallbackFcn(app, @ButtonGroup_2SelectionChanged, true);
            app.ButtonGroup_2.BorderType = 'none';
            app.ButtonGroup_2.ButtonDownFcn = createCallbackFcn(app, @ButtonGroup_2ButtonDown, true);
            app.ButtonGroup_2.BusyAction = 'cancel';
            app.ButtonGroup_2.Position = [124 55 127 90];

            % Create perigeapogeButton
            app.perigeapogeButton = uiradiobutton(app.ButtonGroup_2);
            app.perigeapogeButton.Text = 'perige-apoge';
            app.perigeapogeButton.Position = [11 68 94 22];
            app.perigeapogeButton.Value = true;

            % Create apogeperigeButton
            app.apogeperigeButton = uiradiobutton(app.ButtonGroup_2);
            app.apogeperigeButton.Text = 'apoge-perige';
            app.apogeperigeButton.Position = [11 47 94 22];

            % Create apogeapogeButton
            app.apogeapogeButton = uiradiobutton(app.ButtonGroup_2);
            app.apogeapogeButton.Text = 'apoge-apoge';
            app.apogeapogeButton.Position = [11 21 94 22];

            % Create perigeperigeButton
            app.perigeperigeButton = uiradiobutton(app.ButtonGroup_2);
            app.perigeperigeButton.Text = 'perige-perige';
            app.perigeperigeButton.Position = [11 1 94 22];

            % Create a_iEditFieldLabel
            app.a_iEditFieldLabel = uilabel(app.elliptical_bi_panel);
            app.a_iEditFieldLabel.HorizontalAlignment = 'right';
            app.a_iEditFieldLabel.Position = [13 226 25 22];
            app.a_iEditFieldLabel.Text = 'a_i';

            % Create a_iEditField
            app.a_iEditField = uieditfield(app.elliptical_bi_panel, 'numeric');
            app.a_iEditField.ValueChangedFcn = createCallbackFcn(app, @e_iEditFieldValueChanged, true);
            app.a_iEditField.Position = [55 226 40 22];

            % Create e_iEditFieldLabel
            app.e_iEditFieldLabel = uilabel(app.elliptical_bi_panel);
            app.e_iEditFieldLabel.HorizontalAlignment = 'right';
            app.e_iEditFieldLabel.Position = [15 196 25 22];
            app.e_iEditFieldLabel.Text = 'e_i';

            % Create e_iEditField
            app.e_iEditField = uieditfield(app.elliptical_bi_panel, 'numeric');
            app.e_iEditField.ValueChangedFcn = createCallbackFcn(app, @e_iEditFieldValueChanged, true);
            app.e_iEditField.Position = [55 196 40 22];

            % Create om_iEditFieldLabel
            app.om_iEditFieldLabel = uilabel(app.elliptical_bi_panel);
            app.om_iEditFieldLabel.HorizontalAlignment = 'right';
            app.om_iEditFieldLabel.Position = [9 165 31 22];
            app.om_iEditFieldLabel.Text = 'om_i';

            % Create om_iEditField
            app.om_iEditField = uieditfield(app.elliptical_bi_panel, 'numeric');
            app.om_iEditField.ValueChangedFcn = createCallbackFcn(app, @e_iEditFieldValueChanged, true);
            app.om_iEditField.Position = [55 165 40 22];

            % Create th_iEditFieldLabel
            app.th_iEditFieldLabel = uilabel(app.elliptical_bi_panel);
            app.th_iEditFieldLabel.HorizontalAlignment = 'right';
            app.th_iEditFieldLabel.Position = [15 116 25 22];
            app.th_iEditFieldLabel.Text = 'th_i';

            % Create th_iEditField
            app.th_iEditField = uieditfield(app.elliptical_bi_panel, 'numeric');
            app.th_iEditField.Editable = 'off';
            app.th_iEditField.Position = [55 116 40 22];

            % Create a_fEditFieldLabel
            app.a_fEditFieldLabel = uilabel(app.elliptical_bi_panel);
            app.a_fEditFieldLabel.HorizontalAlignment = 'right';
            app.a_fEditFieldLabel.Position = [280 222 25 22];
            app.a_fEditFieldLabel.Text = 'a_f';

            % Create a_fEditField
            app.a_fEditField = uieditfield(app.elliptical_bi_panel, 'numeric');
            app.a_fEditField.Position = [322 222 40 22];

            % Create e_fEditFieldLabel
            app.e_fEditFieldLabel = uilabel(app.elliptical_bi_panel);
            app.e_fEditFieldLabel.HorizontalAlignment = 'right';
            app.e_fEditFieldLabel.Position = [282 192 25 22];
            app.e_fEditFieldLabel.Text = 'e_f';

            % Create e_fEditField
            app.e_fEditField = uieditfield(app.elliptical_bi_panel, 'numeric');
            app.e_fEditField.Position = [322 192 40 22];

            % Create om_fEditFieldLabel
            app.om_fEditFieldLabel = uilabel(app.elliptical_bi_panel);
            app.om_fEditFieldLabel.HorizontalAlignment = 'right';
            app.om_fEditFieldLabel.Position = [275 144 32 22];
            app.om_fEditFieldLabel.Text = 'om_f';

            % Create om_fEditField
            app.om_fEditField = uieditfield(app.elliptical_bi_panel, 'numeric');
            app.om_fEditField.Editable = 'off';
            app.om_fEditField.Position = [322 144 40 22];

            % Create th_fEditField_2Label
            app.th_fEditField_2Label = uilabel(app.elliptical_bi_panel);
            app.th_fEditField_2Label.HorizontalAlignment = 'right';
            app.th_fEditField_2Label.Position = [282 116 25 22];
            app.th_fEditField_2Label.Text = 'th_f';

            % Create th_fEditField_2
            app.th_fEditField_2 = uieditfield(app.elliptical_bi_panel, 'numeric');
            app.th_fEditField_2.Editable = 'off';
            app.th_fEditField_2.Position = [322 116 40 22];
            app.th_fEditField_2.Value = 180;

            % Create a_tEditFieldLabel
            app.a_tEditFieldLabel = uilabel(app.elliptical_bi_panel);
            app.a_tEditFieldLabel.HorizontalAlignment = 'right';
            app.a_tEditFieldLabel.Position = [15 72 25 22];
            app.a_tEditFieldLabel.Text = 'a_t';

            % Create a_tEditField
            app.a_tEditField = uieditfield(app.elliptical_bi_panel, 'numeric');
            app.a_tEditField.Editable = 'off';
            app.a_tEditField.Position = [55 72 40 22];

            % Create e_tEditFieldLabel
            app.e_tEditFieldLabel = uilabel(app.elliptical_bi_panel);
            app.e_tEditFieldLabel.HorizontalAlignment = 'right';
            app.e_tEditFieldLabel.Position = [15 39 25 22];
            app.e_tEditFieldLabel.Text = 'e_t';

            % Create e_tEditField
            app.e_tEditField = uieditfield(app.elliptical_bi_panel, 'numeric');
            app.e_tEditField.Editable = 'off';
            app.e_tEditField.Position = [55 39 40 22];

            % Create D_v1EditFieldLabel
            app.D_v1EditFieldLabel = uilabel(app.elliptical_bi_panel);
            app.D_v1EditFieldLabel.HorizontalAlignment = 'right';
            app.D_v1EditFieldLabel.Position = [275 70 32 22];
            app.D_v1EditFieldLabel.Text = 'D_v1';

            % Create D_v1EditField
            app.D_v1EditField = uieditfield(app.elliptical_bi_panel, 'numeric');
            app.D_v1EditField.Editable = 'off';
            app.D_v1EditField.Position = [322 70 40 22];

            % Create D_v2EditFieldLabel
            app.D_v2EditFieldLabel = uilabel(app.elliptical_bi_panel);
            app.D_v2EditFieldLabel.HorizontalAlignment = 'right';
            app.D_v2EditFieldLabel.Position = [280 38 32 22];
            app.D_v2EditFieldLabel.Text = 'D_v2';

            % Create D_v2EditField
            app.D_v2EditField = uieditfield(app.elliptical_bi_panel, 'numeric');
            app.D_v2EditField.Editable = 'off';
            app.D_v2EditField.Position = [321 38 40 22];

            % Create TimeEditFieldLabel
            app.TimeEditFieldLabel = uilabel(app.elliptical_bi_panel);
            app.TimeEditFieldLabel.HorizontalAlignment = 'right';
            app.TimeEditFieldLabel.Position = [124 17 31 22];
            app.TimeEditFieldLabel.Text = 'Time';

            % Create TimeEditField
            app.TimeEditField = uieditfield(app.elliptical_bi_panel, 'numeric');
            app.TimeEditField.Editable = 'off';
            app.TimeEditField.Position = [170 17 40 22];

            % Create iEditField_3Label
            app.iEditField_3Label = uilabel(app.elliptical_bi_panel);
            app.iEditField_3Label.HorizontalAlignment = 'right';
            app.iEditField_3Label.Position = [133 222 25 22];
            app.iEditField_3Label.Text = 'i';

            % Create iEditField_3
            app.iEditField_3 = uieditfield(app.elliptical_bi_panel, 'numeric');
            app.iEditField_3.Position = [168 222 40 22];

            % Create OMEditField_3Label
            app.OMEditField_3Label = uilabel(app.elliptical_bi_panel);
            app.OMEditField_3Label.HorizontalAlignment = 'right';
            app.OMEditField_3Label.Position = [133 189 25 22];
            app.OMEditField_3Label.Text = 'OM';

            % Create OMEditField_3
            app.OMEditField_3 = uieditfield(app.elliptical_bi_panel, 'numeric');
            app.OMEditField_3.Position = [168 189 40 22];

            % Create bielliptic
            app.bielliptic = uipanel(app.UIFigure);
            app.bielliptic.Visible = 'off';
            app.bielliptic.BusyAction = 'cancel';
            app.bielliptic.Position = [70 -227 390 284];

            % Create FirstorbitLabel_2
            app.FirstorbitLabel_2 = uilabel(app.bielliptic);
            app.FirstorbitLabel_2.Position = [28 252 56 22];
            app.FirstorbitLabel_2.Text = 'First orbit';

            % Create FinalorbitLabel_2
            app.FinalorbitLabel_2 = uilabel(app.bielliptic);
            app.FinalorbitLabel_2.Position = [296 248 58 22];
            app.FinalorbitLabel_2.Text = 'Final orbit';

            % Create TransferorbitLabel_2
            app.TransferorbitLabel_2 = uilabel(app.bielliptic);
            app.TransferorbitLabel_2.Position = [24 93 76 22];
            app.TransferorbitLabel_2.Text = 'Transfer orbit';

            % Create Run_bielliptic
            app.Run_bielliptic = uibutton(app.bielliptic, 'push');
            app.Run_bielliptic.ButtonPushedFcn = createCallbackFcn(app, @Run_biellipticPushed, true);
            app.Run_bielliptic.BusyAction = 'cancel';
            app.Run_bielliptic.Position = [138 118 100 23];
            app.Run_bielliptic.Text = 'Run';

            % Create useconstantsCheckBox_2
            app.useconstantsCheckBox_2 = uicheckbox(app.bielliptic);
            app.useconstantsCheckBox_2.Text = 'use constants';
            app.useconstantsCheckBox_2.Position = [142 252 97 22];

            % Create ButtonGroup_3
            app.ButtonGroup_3 = uibuttongroup(app.bielliptic);
            app.ButtonGroup_3.SelectionChangedFcn = createCallbackFcn(app, @ButtonGroup_3SelectionChanged, true);
            app.ButtonGroup_3.BorderType = 'none';
            app.ButtonGroup_3.Position = [145 142 127 41];

            % Create perigeButton
            app.perigeButton = uiradiobutton(app.ButtonGroup_3);
            app.perigeButton.Text = 'perige';
            app.perigeButton.Position = [11 19 56 22];
            app.perigeButton.Value = true;

            % Create apogeButton
            app.apogeButton = uiradiobutton(app.ButtonGroup_3);
            app.apogeButton.Text = 'apoge';
            app.apogeButton.Position = [11 -2 56 22];

            % Create a_iEditField_2Label
            app.a_iEditField_2Label = uilabel(app.bielliptic);
            app.a_iEditField_2Label.HorizontalAlignment = 'right';
            app.a_iEditField_2Label.Position = [13 226 25 22];
            app.a_iEditField_2Label.Text = 'a_i';

            % Create a_iEditField_2
            app.a_iEditField_2 = uieditfield(app.bielliptic, 'numeric');
            app.a_iEditField_2.Position = [55 226 40 22];

            % Create e_iEditField_2Label
            app.e_iEditField_2Label = uilabel(app.bielliptic);
            app.e_iEditField_2Label.HorizontalAlignment = 'right';
            app.e_iEditField_2Label.Position = [15 196 25 22];
            app.e_iEditField_2Label.Text = 'e_i';

            % Create e_iEditField_2
            app.e_iEditField_2 = uieditfield(app.bielliptic, 'numeric');
            app.e_iEditField_2.Position = [55 196 40 22];

            % Create om_iEditField_2Label
            app.om_iEditField_2Label = uilabel(app.bielliptic);
            app.om_iEditField_2Label.HorizontalAlignment = 'right';
            app.om_iEditField_2Label.Position = [9 165 31 22];
            app.om_iEditField_2Label.Text = 'om_i';

            % Create om_iEditField_2
            app.om_iEditField_2 = uieditfield(app.bielliptic, 'numeric');
            app.om_iEditField_2.Position = [55 165 40 22];

            % Create th_iEditField_2Label
            app.th_iEditField_2Label = uilabel(app.bielliptic);
            app.th_iEditField_2Label.HorizontalAlignment = 'right';
            app.th_iEditField_2Label.Position = [15 135 25 22];
            app.th_iEditField_2Label.Text = 'th_i';

            % Create th_iEditField_2
            app.th_iEditField_2 = uieditfield(app.bielliptic, 'numeric');
            app.th_iEditField_2.Position = [55 135 40 22];

            % Create a_fEditField_2Label
            app.a_fEditField_2Label = uilabel(app.bielliptic);
            app.a_fEditField_2Label.HorizontalAlignment = 'right';
            app.a_fEditField_2Label.Position = [280 222 25 22];
            app.a_fEditField_2Label.Text = 'a_f';

            % Create a_fEditField_2
            app.a_fEditField_2 = uieditfield(app.bielliptic, 'numeric');
            app.a_fEditField_2.Position = [322 222 40 22];

            % Create e_fEditField_2Label
            app.e_fEditField_2Label = uilabel(app.bielliptic);
            app.e_fEditField_2Label.HorizontalAlignment = 'right';
            app.e_fEditField_2Label.Position = [282 192 25 22];
            app.e_fEditField_2Label.Text = 'e_f';

            % Create e_fEditField_2
            app.e_fEditField_2 = uieditfield(app.bielliptic, 'numeric');
            app.e_fEditField_2.Position = [322 192 40 22];

            % Create om_fEditField_2Label
            app.om_fEditField_2Label = uilabel(app.bielliptic);
            app.om_fEditField_2Label.HorizontalAlignment = 'right';
            app.om_fEditField_2Label.Position = [275 161 32 22];
            app.om_fEditField_2Label.Text = 'om_f';

            % Create om_fEditField_2
            app.om_fEditField_2 = uieditfield(app.bielliptic, 'numeric');
            app.om_fEditField_2.Editable = 'off';
            app.om_fEditField_2.Position = [322 161 40 22];

            % Create th_fEditField_3Label
            app.th_fEditField_3Label = uilabel(app.bielliptic);
            app.th_fEditField_3Label.HorizontalAlignment = 'right';
            app.th_fEditField_3Label.Position = [282 131 25 22];
            app.th_fEditField_3Label.Text = 'th_f';

            % Create th_fEditField_3
            app.th_fEditField_3 = uieditfield(app.bielliptic, 'numeric');
            app.th_fEditField_3.Editable = 'off';
            app.th_fEditField_3.Position = [322 131 40 22];

            % Create a_t1EditFieldLabel
            app.a_t1EditFieldLabel = uilabel(app.bielliptic);
            app.a_t1EditFieldLabel.HorizontalAlignment = 'right';
            app.a_t1EditFieldLabel.Position = [12 72 28 22];
            app.a_t1EditFieldLabel.Text = 'a_t1';

            % Create a_t1EditField
            app.a_t1EditField = uieditfield(app.bielliptic, 'numeric');
            app.a_t1EditField.Editable = 'off';
            app.a_t1EditField.Position = [55 72 40 22];

            % Create e_t1EditFieldLabel
            app.e_t1EditFieldLabel = uilabel(app.bielliptic);
            app.e_t1EditFieldLabel.HorizontalAlignment = 'right';
            app.e_t1EditFieldLabel.Position = [11 38 28 22];
            app.e_t1EditFieldLabel.Text = 'e_t1';

            % Create e_t1EditField
            app.e_t1EditField = uieditfield(app.bielliptic, 'numeric');
            app.e_t1EditField.Editable = 'off';
            app.e_t1EditField.Position = [54 38 40 22];

            % Create D_v1EditField_2Label
            app.D_v1EditField_2Label = uilabel(app.bielliptic);
            app.D_v1EditField_2Label.HorizontalAlignment = 'right';
            app.D_v1EditField_2Label.Position = [262 69 32 22];
            app.D_v1EditField_2Label.Text = 'D_v1';

            % Create D_v1EditField_2
            app.D_v1EditField_2 = uieditfield(app.bielliptic, 'numeric');
            app.D_v1EditField_2.Editable = 'off';
            app.D_v1EditField_2.Position = [303 69 40 22];

            % Create D_v2EditField_2Label
            app.D_v2EditField_2Label = uilabel(app.bielliptic);
            app.D_v2EditField_2Label.HorizontalAlignment = 'right';
            app.D_v2EditField_2Label.Position = [262 38 32 22];
            app.D_v2EditField_2Label.Text = 'D_v2';

            % Create D_v2EditField_2
            app.D_v2EditField_2 = uieditfield(app.bielliptic, 'numeric');
            app.D_v2EditField_2.Editable = 'off';
            app.D_v2EditField_2.Position = [303 38 40 22];

            % Create TimeEditField_2Label
            app.TimeEditField_2Label = uilabel(app.bielliptic);
            app.TimeEditField_2Label.HorizontalAlignment = 'right';
            app.TimeEditField_2Label.Position = [128 10 31 22];
            app.TimeEditField_2Label.Text = 'Time';

            % Create TimeEditField_2
            app.TimeEditField_2 = uieditfield(app.bielliptic, 'numeric');
            app.TimeEditField_2.Editable = 'off';
            app.TimeEditField_2.Position = [174 10 40 22];

            % Create iEditField_4Label
            app.iEditField_4Label = uilabel(app.bielliptic);
            app.iEditField_4Label.HorizontalAlignment = 'right';
            app.iEditField_4Label.Position = [133 222 25 22];
            app.iEditField_4Label.Text = 'i';

            % Create iEditField_4
            app.iEditField_4 = uieditfield(app.bielliptic, 'numeric');
            app.iEditField_4.Position = [168 222 40 22];

            % Create OMEditField_4Label
            app.OMEditField_4Label = uilabel(app.bielliptic);
            app.OMEditField_4Label.HorizontalAlignment = 'right';
            app.OMEditField_4Label.Position = [133 189 25 22];
            app.OMEditField_4Label.Text = 'OM';

            % Create OMEditField_4
            app.OMEditField_4 = uieditfield(app.bielliptic, 'numeric');
            app.OMEditField_4.Position = [168 189 40 22];

            % Create a_t2EditFieldLabel
            app.a_t2EditFieldLabel = uilabel(app.bielliptic);
            app.a_t2EditFieldLabel.HorizontalAlignment = 'right';
            app.a_t2EditFieldLabel.Position = [128 69 28 22];
            app.a_t2EditFieldLabel.Text = 'a_t2';

            % Create a_t2EditField
            app.a_t2EditField = uieditfield(app.bielliptic, 'numeric');
            app.a_t2EditField.Editable = 'off';
            app.a_t2EditField.Position = [171 69 40 22];

            % Create e_t2EditFieldLabel
            app.e_t2EditFieldLabel = uilabel(app.bielliptic);
            app.e_t2EditFieldLabel.HorizontalAlignment = 'right';
            app.e_t2EditFieldLabel.Position = [127 35 28 22];
            app.e_t2EditFieldLabel.Text = 'e_t2';

            % Create e_t2EditField
            app.e_t2EditField = uieditfield(app.bielliptic, 'numeric');
            app.e_t2EditField.Editable = 'off';
            app.e_t2EditField.Position = [170 35 40 22];

            % Create D_v3EditFieldLabel
            app.D_v3EditFieldLabel = uilabel(app.bielliptic);
            app.D_v3EditFieldLabel.HorizontalAlignment = 'right';
            app.D_v3EditFieldLabel.Position = [262 10 32 22];
            app.D_v3EditFieldLabel.Text = 'D_v3';

            % Create D_v3EditField
            app.D_v3EditField = uieditfield(app.bielliptic, 'numeric');
            app.D_v3EditField.Editable = 'off';
            app.D_v3EditField.Position = [303 10 40 22];

            % Create r_bEditFieldLabel
            app.r_bEditFieldLabel = uilabel(app.bielliptic);
            app.r_bEditFieldLabel.HorizontalAlignment = 'right';
            app.r_bEditFieldLabel.Position = [13 10 25 22];
            app.r_bEditFieldLabel.Text = 'r_b';

            % Create r_bEditField
            app.r_bEditField = uieditfield(app.bielliptic, 'numeric');
            app.r_bEditField.Position = [55 10 39 22];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = plotOrbits_application_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end