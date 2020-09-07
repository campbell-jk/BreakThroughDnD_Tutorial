/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 4D693BC8
/// @DnDArgument : "var" "numOfBricks"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "obj_brick"
/// @DnDSaveInfo : "object" "obj_brick"
var numOfBricks = instance_number(obj_brick);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F24184C
/// @DnDArgument : "var" "numOfBricks"
/// @DnDArgument : "op" "3"
if(numOfBricks <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 4DFF3F41
	/// @DnDParent : 2F24184C
	room_restart();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3886813D
/// @DnDArgument : "var" "gameover"
/// @DnDArgument : "value" "true"
if(gameover == true)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 54826598
	/// @DnDParent : 3886813D
	/// @DnDArgument : "key" "vk_enter"
	var l54826598_0;
	l54826598_0 = keyboard_check_pressed(vk_enter);
	if (l54826598_0)
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 7B09F27C
		/// @DnDInput : 2
		/// @DnDParent : 54826598
		/// @DnDArgument : "value_1" "4"
		/// @DnDArgument : "var" "player_score"
		/// @DnDArgument : "var_1" "player_lives"
		global.player_score = 0;
		global.player_lives = 4;
	
		/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 1E762C46
		/// @DnDParent : 54826598
		room_restart();
	}
}