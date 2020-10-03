/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 63EB10E8
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "anim"
function anim() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A719521
	/// @DnDParent : 63EB10E8
	/// @DnDArgument : "var" "h_spd"
	/// @DnDArgument : "not" "1"
	if(!(h_spd == 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 06D7C1CC
		/// @DnDParent : 4A719521
		/// @DnDArgument : "var" "h_spd"
		/// @DnDArgument : "op" "2"
		if(h_spd > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 30B407F8
			/// @DnDParent : 06D7C1CC
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "facing"
			facing = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 37E11EC4
		/// @DnDParent : 4A719521
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1A6FBAD6
			/// @DnDParent : 37E11EC4
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "facing"
			facing = -1;
		}
	}
}