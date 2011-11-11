function [ pinfo ] = create_profile_info()
% Copyright 2011, Kenny Erleben

draw_images             = true;  % Flag telling if the spatial deformed mesh should be drawn duing simulation
debug_level             = 0;     % Debug level used when drawing the mesh, valid values are 0, 1, 2
save_images             = true;  % Flag telling if the drawn mesh should be saved into an image file.
record_wall_clock       = true;  % Flag telling if the wall clock time of the time steps should be measured and recorded.
record_kinetic_energy   = true;  % Flag telling if the kinetic energy should be measured and recorded.
record_volume           = true;  % Flag telling if the min and max volume elements as well as total volume should be recorded.
record_time_steps       = true;  % Flag telling if the time step size should be recorded.
record_test_point       = true;  % Flag telling if the motion channles (x,y,z coords) of a given test point should be recorded.
record_convergence_rate = true;  % Flag telling if convergence rate of 'solvers' (if any) should be recorded.

test_point              = [4.5, 1.5, 1.5 ];    % The default test point to be used.
image_formats           = {'-depsc2','-dpng'}; % Image output formats.
output_path             = '../output/';        % Location where to save image files
filename_prefix         = 'tst_';              % Prefix name of image files

pinfo = struct(...
  'draw_images', draw_images,...
  'debug_level', debug_level,...
  'save_images', save_images,...
  'record_wall_clock', record_wall_clock,...
  'record_kinetic_energy',record_kinetic_energy,...
  'record_volume',  record_volume,...
  'record_time_steps',  record_time_steps,...
  'record_test_point',  record_test_point,...
  'test_point',  test_point,...
  'output_path',  output_path,...
  'filename_prefix',  filename_prefix,...
  'image_formats', { image_formats},...
  'record_convergence_rate',  record_convergence_rate...
  );

end