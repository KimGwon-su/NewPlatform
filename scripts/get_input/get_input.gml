/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4E476A96
/// @DnDComment : Script assets have changed$(13_10)for v2.3.0 see $(13_10)https://help.yoyogames.com/hc/en-us/articles/360005277377 $(13_10)for more information
/// @DnDArgument : "funcName" "get_input"
function get_input() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53051BF0
	/// @DnDParent : 4E476A96
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "jump"
	jump = false;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 52E47397
	/// @DnDParent : 4E476A96
	/// @DnDArgument : "key" "vk_right"
	var l52E47397_0;
	l52E47397_0 = keyboard_check(vk_right);
	if (l52E47397_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A7F2DAA
		/// @DnDParent : 52E47397
		/// @DnDArgument : "expr" "walk_spd"
		/// @DnDArgument : "var" "h_spd"
		h_spd = walk_spd;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 2A222579
	/// @DnDParent : 4E476A96
	/// @DnDArgument : "key" "vk_left"
	var l2A222579_0;
	l2A222579_0 = keyboard_check(vk_left);
	if (l2A222579_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6435735C
		/// @DnDParent : 2A222579
		/// @DnDArgument : "expr" "-walk_spd"
		/// @DnDArgument : "var" "h_spd"
		h_spd = -walk_spd;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 09460153
	/// @DnDParent : 4E476A96
	var l09460153_0;
	l09460153_0 = keyboard_check_pressed(vk_space);
	if (l09460153_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5BAB36B1
		/// @DnDParent : 09460153
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "jump"
		jump = true;
	}
}