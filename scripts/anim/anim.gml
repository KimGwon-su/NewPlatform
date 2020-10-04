/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 63EB10E8
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "anim"
function anim() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 415DC938
	/// @DnDParent : 63EB10E8
	/// @DnDArgument : "var" "on_ground"
	/// @DnDArgument : "value" "true"
	if(on_ground == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4A719521
		/// @DnDParent : 415DC938
		/// @DnDArgument : "var" "h_spd"
		/// @DnDArgument : "not" "1"
		if(!(h_spd == 0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 344B35EA
			/// @DnDParent : 4A719521
			/// @DnDArgument : "expr" "spr_walk"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_walk;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2DBE5851
			/// @DnDParent : 4A719521
			/// @DnDArgument : "var" "h_spd"
			/// @DnDArgument : "not" "1"
			if(!(h_spd == 0))
			{
			
			}
		
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
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 0FE5549F
		/// @DnDParent : 415DC938
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 318742F6
			/// @DnDParent : 0FE5549F
			/// @DnDArgument : "expr" "spr_idle"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_idle;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 33A75572
	/// @DnDParent : 63EB10E8
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 5D77D059
		/// @DnDParent : 33A75572
		/// @DnDArgument : "value" "spr_air"
		/// @DnDArgument : "instvar" "10"
		sprite_index = spr_air;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 06C325C2
		/// @DnDParent : 33A75572
		/// @DnDArgument : "var" "v_spd"
		/// @DnDArgument : "op" "1"
		if(v_spd < 0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 5CD581BD
			/// @DnDParent : 06C325C2
			/// @DnDArgument : "instvar" "11"
			image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3DB8D112
		/// @DnDParent : 33A75572
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 1AC1EBCE
			/// @DnDParent : 3DB8D112
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "instvar" "11"
			image_index = 1;
		}
	}
}