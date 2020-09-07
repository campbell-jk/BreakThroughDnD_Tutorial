/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4AC4A1B6
/// @DnDArgument : "x" "8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "global.player_score"
draw_text(8, 8, string("Score: ") + string(global.player_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 15C3A97B
/// @DnDArgument : "halign" "fa_right"
draw_set_halign(fa_right);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5FB0DCA3
/// @DnDArgument : "x" "room_width-8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""High Score: ""
/// @DnDArgument : "var" "global.high_score"
draw_text(room_width-8, 8, string("High Score: ") + string(global.high_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 3635CD69
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 17EA6AE9
/// @DnDArgument : "x" "(room_width/2) - ((global.player_lives-1) * 32)"
/// @DnDArgument : "y" "room_height-32"
/// @DnDArgument : "sprite" "spr_lives"
/// @DnDArgument : "number" "global.player_lives"
/// @DnDSaveInfo : "sprite" "spr_lives"
var l17EA6AE9_0 = sprite_get_width(spr_lives);
var l17EA6AE9_1 = 0;
for(var l17EA6AE9_2 = global.player_lives; l17EA6AE9_2 > 0; --l17EA6AE9_2) {
	draw_sprite(spr_lives, 0, (room_width/2) - ((global.player_lives-1) * 32) + l17EA6AE9_1, room_height-32);
	l17EA6AE9_1 += l17EA6AE9_0;
}