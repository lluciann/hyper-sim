function [ method ] = fvm_method( )
% Copyright 2011, Kenny Erleben

create_mesh              = @fvm_create_mesh;
create_state             = @fvm_create_state;
implicit_step            = @fvm_implicit_step;
compute_elastic_forces   = @fvm_compute_elastic_forces;
semi_implicit_step       = @fvm_semi_implicit_step;
clear_forces             = @fvm_clear_forces;
add_surface_traction     = @fvm_add_surface_traction;
compute_kinetic_energy   = @fvm_compute_kinetic_energy;

method = struct(...
  'create_mesh', create_mesh,...
  'create_state', create_state,...
  'implicit_step', implicit_step,...
  'compute_elastic_forces', compute_elastic_forces,...
  'semi_implicit_step', semi_implicit_step,...
  'clear_forces', clear_forces,...
  'add_surface_traction', add_surface_traction,...
  'compute_kinetic_energy',compute_kinetic_energy...
  );

end