/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 6A8216F6
/// @DnDArgument : "soundid" "snd_hurt"
/// @DnDSaveInfo : "soundid" "69717597-e3da-431d-9176-48124bc6d09a"
audio_play_sound(snd_hurt, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 44CE5A48
/// @DnDApplyTo : e440d9db-afcd-40f2-a782-a0fff4aaa374
with(ob_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 658A8B8C
	/// @DnDParent : 44CE5A48
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0B0914EE
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 2022CDE2
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 471EDB9F
	/// @DnDParent : 2022CDE2
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DC3DDAB
	/// @DnDParent : 2022CDE2
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_astroid_big"
	if(sprite_index == spr_astroid_big)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 54944DAE
		/// @DnDParent : 7DC3DDAB
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 674220DE
			/// @DnDParent : 54944DAE
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAstroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "ob_astroid"
			/// @DnDSaveInfo : "objectid" "f0531779-4c7e-4b52-8206-557658ebda12"
			var newAstroid = instance_create_layer(x + 0, y + 0, "Instances", ob_astroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 572EFAB1
			/// @DnDParent : 54944DAE
			/// @DnDArgument : "expr" "spr_astroid_medium"
			/// @DnDArgument : "var" "newAstroid.sprite_index"
			newAstroid.sprite_index = spr_astroid_medium;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 528149B4
	/// @DnDParent : 2022CDE2
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_astroid_medium"
	if(sprite_index == spr_astroid_medium)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 28E4172F
		/// @DnDParent : 528149B4
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 70989A76
			/// @DnDParent : 28E4172F
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAstroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "ob_astroid"
			/// @DnDSaveInfo : "objectid" "f0531779-4c7e-4b52-8206-557658ebda12"
			var newAstroid = instance_create_layer(x + 0, y + 0, "Instances", ob_astroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5013D538
			/// @DnDParent : 28E4172F
			/// @DnDArgument : "expr" "spr_astroid_small"
			/// @DnDArgument : "var" "newAstroid.sprite_index"
			newAstroid.sprite_index = spr_astroid_small;
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 48856D04
	/// @DnDParent : 2022CDE2
	/// @DnDArgument : "times" "10"
	repeat(10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 74B6A54D
		/// @DnDParent : 48856D04
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "ob_debris"
		/// @DnDSaveInfo : "objectid" "4eac20c9-30e5-4de0-a185-749a44c3d8da"
		instance_create_layer(x + 0, y + 0, "Instances", ob_debris);
	}
}