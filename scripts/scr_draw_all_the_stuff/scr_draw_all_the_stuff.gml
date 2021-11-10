function scr_draw_all_the_stuff() {
    gpu_set_tex_repeat(true);
    shader_set(shd_basic_3d_stuff);
    // Everything must be drawn after the 3D projection has been set
    vertex_submit(ground, pr_trianglelist, sprite_get_texture(spr_grass, 0));
    
    gpu_set_tex_repeat(false);
    
    matrix_set(matrix_world, matrix_build(250, 250, 50, 0, 0, 0, 1, 1, 1));
    vertex_submit(vb_merry, pr_trianglelist, -1);
    
    for (var i = 0; i < array_length(tree_positions); i++) {
        var tree_data = tree_positions[i];
        matrix_set(matrix_world, matrix_build(tree_data.x, tree_data.y, 0, 0, 0, 0, 2, 2, 2));
        vertex_submit(vb_trees[tree_data.index], pr_trianglelist, -1);
    }
    
    matrix_set(matrix_world, matrix_build(player_x, player_y, 10, 0, 0, 0, 1, 1, 1));
    vertex_submit(vb_sphere, pr_trianglelist, -1);
    
    matrix_set(matrix_world, matrix_build_identity());
    
    shader_reset();
}