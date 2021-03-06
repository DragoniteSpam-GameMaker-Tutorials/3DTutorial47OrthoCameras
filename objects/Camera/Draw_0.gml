/// @description Draw the 3D world

draw_clear(c_aqua);

shader_set(shd_basic_3d_stuff);

// 3D projections require a view and projection matrix
var camera = camera_get_active();
var camera_distance = 160;

var xfrom = player_x;
var yfrom = player_y + 400;
var zfrom = 250;
var xto = player_x;
var yto = player_y;
var zto = 0;

// You need to do this AFTER setting the surface target,
// otherwise the camera will be in the wrong place
view_mat = matrix_build_lookat(xfrom, yfrom, zfrom, xto, yto, zto, 0, 0, 1);
//proj_mat = matrix_build_projection_perspective_fov(-60, -window_get_width() / window_get_height(), znear, zfar);
proj_mat = matrix_build_projection_ortho(window_get_width() / 2, -window_get_height() / 2, znear, zfar);
camera_set_view_mat(camera, view_mat);
camera_set_proj_mat(camera, proj_mat);
camera_apply(camera);

scr_draw_all_the_stuff();