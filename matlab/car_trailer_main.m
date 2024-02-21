init;

%For this system, the state is x =(x,y,theta,tehtar,v,delta)

x=[0;0;0;0;50;0]; % Initial state

dt=0.01;

frame_counter=0;

car_trailer_draw(x); 

for t=0:dt:5
    
    u1=0;   
    u2=0.05;  
    u=[u1;u2];    
    x=x+car_trailer_f(x,u)*dt; % Euler
    %x=x+dt*(0.25*car_f(x,u)+0.75*(car_f(x+dt*(2/3)*car_f(x,u),u))); % Runge-Kutta
    
    pause(dt);
    
    frame_counter =frame_counter+1;
    
    % Frame sampling
    if frame_counter == 25
       car_trailer_draw(x); 
       frame_counter =0;
    end
end;

