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

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CE08BCC
	/// @DnDParent : 4A478C77
	/// @DnDArgument : "expr" "global.grav"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "v_spd"
	v_spd += global.grav;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0DF6ACEB
	/// @DnDParent : 4A478C77
	/// @DnDArgument : "var" "abs(h_spd)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "0.7"
	if(abs(h_spd) < 0.7)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 47E8FEC0
		/// @DnDParent : 0DF6ACEB
		/// @DnDArgument : "var" "h_spd"
		h_spd = 0;
	}
}