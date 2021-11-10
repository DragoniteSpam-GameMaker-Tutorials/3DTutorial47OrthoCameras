if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    player_x -= 4;
}

if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    player_x += 4;
}

if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
    player_y -= 4;
}

if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
    player_y += 4;
}