/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5C71F5A3
/// @DnDArgument : "expr" "room"
var l5C71F5A3_0 = room;
switch(l5C71F5A3_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2DD7E4E0
	/// @DnDParent : 5C71F5A3
	/// @DnDArgument : "const" "rn_start"
	case rn_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 1F83C388
		/// @DnDParent : 2DD7E4E0
		/// @DnDArgument : "room" "rn_game"
		/// @DnDSaveInfo : "room" "99bb2aec-defe-4cfb-a315-618ca9de035f"
		room_goto(rn_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5CB02C87
	/// @DnDParent : 5C71F5A3
	/// @DnDArgument : "const" "rn_gameover"
	case rn_gameover:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 222CE1C8
		/// @DnDParent : 5CB02C87
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1CCFDF16
	/// @DnDParent : 5C71F5A3
	/// @DnDArgument : "const" "rn_win"
	case rn_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 42B257A0
		/// @DnDParent : 1CCFDF16
		game_restart();
		break;
}