/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0766CFF3
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "colision"
function colision() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 5A9045FC
	/// @DnDParent : 0766CFF3
	/// @DnDArgument : "x" "h_spd"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_solid"
	/// @DnDSaveInfo : "object" "obj_solid"
	var l5A9045FC_0 = instance_place(x + h_spd, y + 0, obj_solid);
	if ((l5A9045FC_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 387E0DFF
		/// @DnDParent : 5A9045FC
		/// @DnDArgument : "var" "colide"
		/// @DnDArgument : "value" "false"
		var colide = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 5EB6D373
		/// @DnDParent : 5A9045FC
		/// @DnDArgument : "var" "colide"
		/// @DnDArgument : "value" "false"
		while ((colide == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 563ED946
			/// @DnDParent : 5EB6D373
			/// @DnDArgument : "x" "sign(h_spd)"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "obj_solid"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "obj_solid"
			var l563ED946_0 = instance_place(x + sign(h_spd), y + 0, obj_solid);
			if (!(l563ED946_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 392BD73D
				/// @DnDParent : 563ED946
				/// @DnDArgument : "expr" "sign(h_spd)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "x"
				x += sign(h_spd);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 01D829BB
			/// @DnDParent : 5EB6D373
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0EFEE575
				/// @DnDParent : 01D829BB
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "colide"
				colide = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2ED74B78
				/// @DnDParent : 01D829BB
				/// @DnDArgument : "var" "h_spd"
				h_spd = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 759C9598
	/// @DnDParent : 0766CFF3
	/// @DnDArgument : "expr" "h_spd"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += h_spd;
}