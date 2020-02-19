/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 549AA989
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rn_game"
if(room == rn_game)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 4EC6E29D
	/// @DnDParent : 549AA989
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDSaveInfo : "soundid" "300756cb-2fd9-42bb-bf5f-539fd6a5441a"
	var l4EC6E29D_0 = msc_song;
	if (audio_is_playing(l4EC6E29D_0))
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 1D3EBA40
		/// @DnDParent : 4EC6E29D
		/// @DnDArgument : "soundid" "msc_song"
		/// @DnDSaveInfo : "soundid" "300756cb-2fd9-42bb-bf5f-539fd6a5441a"
		audio_stop_sound(msc_song);
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 7040F4F0
	/// @DnDParent : 549AA989
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "300756cb-2fd9-42bb-bf5f-539fd6a5441a"
	audio_play_sound(msc_song, 0, 1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 04DBD29D
	/// @DnDParent : 549AA989
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 4DE5F366
	/// @DnDParent : 549AA989
	/// @DnDArgument : "times" "6"
	repeat(6)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 30C2AA40
		/// @DnDInput : 2
		/// @DnDParent : 4DE5F366
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 76F211FA
		/// @DnDParent : 4DE5F366
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 45B0CDA5
			/// @DnDParent : 76F211FA
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "max" "room_height*0.3"
			var yy = (random_range(0, room_height*0.3));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3BB532E5
		/// @DnDParent : 4DE5F366
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 5CA5E6A9
			/// @DnDParent : 3BB532E5
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "min" "room_height*0.7"
			/// @DnDArgument : "max" "room_height"
			var yy = (random_range(room_height*0.7, room_height));
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 3563C9C1
		/// @DnDInput : 2
		/// @DnDParent : 4DE5F366
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4769B184
		/// @DnDParent : 4DE5F366
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 26A764B0
			/// @DnDParent : 4769B184
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "max" "room_width*0.3"
			var xx = (random_range(0, room_width*0.3));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 453F1C13
		/// @DnDParent : 4DE5F366
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 133E7374
			/// @DnDParent : 453F1C13
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "min" "room_width*0.7"
			/// @DnDArgument : "max" "room_width"
			var xx = (random_range(room_width*0.7, room_width));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2D633272
		/// @DnDParent : 4DE5F366
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "ob_astroid"
		/// @DnDSaveInfo : "objectid" "f0531779-4c7e-4b52-8206-557658ebda12"
		instance_create_layer(xx, yy, "Instances", ob_astroid);
	}
}