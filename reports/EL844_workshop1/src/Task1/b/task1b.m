% Login: bfrd2, EL844

inputFileName = 'user1_1.pen';

% We load the file with space separate values
M = dlmread(inputFileName, ' ', 1, 0);
M(end,:) = []; % We remove the last line of the input

[vprof_raw,max_vel_raw,time_max_vel_raw,avg_vel_raw] = velocityProfile_raw(M);
[vprof_touching,max_vel_touching,time_max_vel_touching,avg_vel_touching] = velocityProfile_touching(M);

% Build a table
T = table([max_vel_raw;time_max_vel_raw;avg_vel_raw],[max_vel_touching;time_max_vel_touching;avg_vel_touching]);
T.Properties.VariableNames = {'Raw', 'Touching'};
T.Properties.RowNames = {'max velocity','max velocity time', 'velocity average'};
fprintf("Input file: '%s'\n", inputFileName);
disp(T)

% ploting using subplots
figure;
subplot(2,2,1); 
plot(vprof_raw)
title('Raw data')
legend('Velocity profile')
legend('boxoff')

subplot(2,2,2);
plot(vprof_touching)
title('Touching the tablet')
legend('Velocity profile')
legend('boxoff')

subplot(2,2,[3, 4]);
yyaxis left
plot(medfilt1(vprof_touching, 10))
hold on
yyaxis right
plot(filter((1/10)*ones(1,10),1,vprof_touching))
title('Filters applied')
legend('Median filter', 'Moving average filter')
legend('boxoff')