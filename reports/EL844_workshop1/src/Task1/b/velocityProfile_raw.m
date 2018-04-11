% Login: bfrd2, EL844

function [vprof,max_vel,time_max_vel,avg_vel] = velocityProfile_raw(M)
%VELOCITYPROFILERAW Computes the velocity profile of the given input

row = size(M, 1);
vprof = zeros(row, 1); % declare the array that will contains the velocity profile

% Initialize few variables
max_vel = 0; % the maximum velocity
time_max_vel = 0; % time of occurrence of the maximum velocity
avg_vel = 0; % the average velocity

for x=1: row - 1
    p1 = [M(x, 2);M(x, 3)]; % get the coordonates of the first point
    p2 = [M(x+1, 2);M(x+1, 3)]; % get the coordonates of the second point
    timeDelta = M(x+1, 1) - M(x, 1); % compute the time delta betwen the 2 records
    
    vprof(x, 1) = distance(p1,p2) / timeDelta; % compute and save the velocity

    avg_vel = avg_vel + vprof(x, 1);
    
    % If this is the highest velocity so far, store the value and time
    if vprof(x, 1) > max_vel
        max_vel = vprof(x, 1);
        time_max_vel = M(x, 1);
    end
end

avg_vel = avg_vel / row; % compute the average velocity

end