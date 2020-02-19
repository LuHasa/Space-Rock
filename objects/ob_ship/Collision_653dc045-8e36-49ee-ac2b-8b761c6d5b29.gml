/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 2345B8AE
/// @DnDArgument : "soundid" "snd_die"
/// @DnDSaveInfo : "soundid" "f54e7973-2643-4214-b599-5ac694dfc0dc"
audio_play_sound(snd_die, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 6F3F5609
/// @DnDApplyTo : e440d9db-afcd-40f2-a782-a0fff4aaa374
with(ob_game) {
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1C0292AC
	/// @DnDParent : 6F3F5609
	/// @DnDArgument : "steps" "60"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 60);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 0326D4F9
/// @DnDApplyTo : e440d9db-afcd-40f2-a782-a0fff4aaa374
with(ob_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 72F16B11
	/// @DnDParent : 0326D4F9
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 492CA87C
instance_destroy();

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 76537A3A
/// @DnDArgument : "times" "10"
repeat(10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3AE04870
	/// @DnDParent : 76537A3A
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "ob_debris"
	/// @DnDSaveInfo : "objectid" "4eac20c9-30e5-4de0-a185-749a44c3d8da"
	instance_create_layer(x + 0, y + 0, "Instances", ob_debris);
}