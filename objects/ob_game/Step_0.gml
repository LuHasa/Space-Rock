/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C95096E
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rn_game"
if(room == rn_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 3C041D12
	/// @DnDParent : 4C95096E
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score == 1000)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 5FBB7FAC
		/// @DnDParent : 3C041D12
		/// @DnDArgument : "soundid" "snd_win"
		/// @DnDSaveInfo : "soundid" "32f70593-e38f-4189-aee0-bd64722b3891"
		audio_play_sound(snd_win, 0, 0);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 32468270
		/// @DnDParent : 3C041D12
		/// @DnDArgument : "room" "rn_win"
		/// @DnDSaveInfo : "room" "0803ca4f-aec3-411b-8367-74ee6acc1cdb"
		room_goto(rn_win);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 1EE8BE37
	/// @DnDParent : 4C95096E
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 32415672
		/// @DnDParent : 1EE8BE37
		/// @DnDArgument : "soundid" "snd_lose"
		/// @DnDSaveInfo : "soundid" "531481f6-3c8e-400e-b501-b555cd3aafe2"
		audio_play_sound(snd_lose, 0, 0);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3158F619
		/// @DnDParent : 1EE8BE37
		/// @DnDArgument : "room" "rn_gameover"
		/// @DnDSaveInfo : "room" "9e66fe24-e277-4090-9429-66ca0435c690"
		room_goto(rn_gameover);
	}
}