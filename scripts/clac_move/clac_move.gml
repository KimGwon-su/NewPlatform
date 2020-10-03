/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4A478C77
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "clac_move"
function clac_move() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0AFB0257
	/// @DnDParent : 4A478C77
	/// @DnDArgument : "expr" "h_spd*drag"
	/// @DnDArgument : "var" "h_spd"
	h_spd = h_spd*drag;
}