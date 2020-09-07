/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 06145FD0
/// @DnDInput : 6
/// @DnDArgument : "var" "colour"
/// @DnDArgument : "option" "c_fuchsia"
/// @DnDArgument : "option_1" "c_aqua"
/// @DnDArgument : "option_2" "c_lime"
/// @DnDArgument : "option_3" "c_teal"
/// @DnDArgument : "option_4" "c_white"
/// @DnDArgument : "option_5" "c_yellow"
colour = choose(c_fuchsia, c_aqua, c_lime, c_teal, c_white, c_yellow);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 1720ADED
/// @DnDArgument : "value" "colour"
/// @DnDArgument : "instvar" "14"
image_blend = colour;