/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 2CD91C8D
/// @DnDArgument : "expr" "room"
var l2CD91C8D_0 = room;
switch(l2CD91C8D_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0493CF70
	/// @DnDParent : 2CD91C8D
	/// @DnDArgument : "const" "rn_game"
	case rn_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 1CCBD424
		/// @DnDParent : 0493CF70
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 629803FC
		/// @DnDParent : 0493CF70
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "spr_lives"
		/// @DnDSaveInfo : "sprite" "fe47943c-a61e-4438-954b-777ffec64f7b"
		var l629803FC_0 = sprite_get_width(spr_lives);
		var l629803FC_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l629803FC_2 = __dnd_lives; l629803FC_2 > 0; --l629803FC_2) {
			draw_sprite(spr_lives, 0, 20 + l629803FC_1, 40);
			l629803FC_1 += l629803FC_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 597BF2CB
	/// @DnDParent : 2CD91C8D
	/// @DnDArgument : "const" "rn_start"
	case rn_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 3FF1212A
		/// @DnDParent : 597BF2CB
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 4E98DC62
		/// @DnDParent : 597BF2CB
		/// @DnDArgument : "color" "$FF00E1FF"
		draw_set_colour($FF00E1FF & $ffffff);
		var l4E98DC62_0=($FF00E1FF >> 24);
		draw_set_alpha(l4E98DC62_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 7A286560
		/// @DnDParent : 597BF2CB
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""Space Rocks""
		draw_text_transformed(250, 100, string("Space Rocks") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 78EC6830
		/// @DnDParent : 597BF2CB
		draw_set_colour($FFFFFFFF & $ffffff);
		var l78EC6830_0=($FFFFFFFF >> 24);
		draw_set_alpha(l78EC6830_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1302412F
		/// @DnDParent : 597BF2CB
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Score 1,000 points to win""
		draw_text(250, 200, string("Score 1,000 points to win") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 2C7D3DA4
		/// @DnDParent : 597BF2CB
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "230"
		/// @DnDArgument : "caption" ""Move with arrow keys""
		draw_text(250, 230, string("Move with arrow keys") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 28872CA1
		/// @DnDParent : 597BF2CB
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""Press space to shoot""
		draw_text(250, 260, string("Press space to shoot") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 38BAB420
		/// @DnDParent : 597BF2CB
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "290"
		/// @DnDArgument : "caption" ""Press enter to start""
		draw_text(250, 290, string("Press enter to start") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 1AE43097
		/// @DnDParent : 597BF2CB
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5D58864A
	/// @DnDParent : 2CD91C8D
	/// @DnDArgument : "const" "rn_gameover"
	case rn_gameover:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 18B2D999
		/// @DnDParent : 5D58864A
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 6EF7C466
		/// @DnDParent : 5D58864A
		/// @DnDArgument : "color" "$FF0000FF"
		draw_set_colour($FF0000FF & $ffffff);
		var l6EF7C466_0=($FF0000FF >> 24);
		draw_set_alpha(l6EF7C466_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 70B802AE
		/// @DnDParent : 5D58864A
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU LOSE""
		draw_text_transformed(250, 150, string("YOU LOSE") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 68FB8E27
		/// @DnDParent : 5D58864A
		draw_set_colour($FFFFFFFF & $ffffff);
		var l68FB8E27_0=($FFFFFFFF >> 24);
		draw_set_alpha(l68FB8E27_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 682C546B
		/// @DnDParent : 5D58864A
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""Final Score: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("Final Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 44D15EAB
		/// @DnDParent : 5D58864A
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" ""Press enter to restart""
		draw_text(250, 300, string("Press enter to restart") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 7D6755F6
		/// @DnDParent : 5D58864A
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 719E7DB8
	/// @DnDParent : 2CD91C8D
	/// @DnDArgument : "const" "rn_win"
	case rn_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 0FFB7CC8
		/// @DnDParent : 719E7DB8
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 522CFD3B
		/// @DnDParent : 719E7DB8
		/// @DnDArgument : "color" "$FF00FF00"
		draw_set_colour($FF00FF00 & $ffffff);
		var l522CFD3B_0=($FF00FF00 >> 24);
		draw_set_alpha(l522CFD3B_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 383AF273
		/// @DnDParent : 719E7DB8
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU WIN""
		draw_text_transformed(250, 150, string("YOU WIN") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 3674D7E5
		/// @DnDParent : 719E7DB8
		draw_set_colour($FFFFFFFF & $ffffff);
		var l3674D7E5_0=($FFFFFFFF >> 24);
		draw_set_alpha(l3674D7E5_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 0B8B8381
		/// @DnDParent : 719E7DB8
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""Final Score: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("Final Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 3D035EEB
		/// @DnDParent : 719E7DB8
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" ""Press enter to restart""
		draw_text(250, 300, string("Press enter to restart") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 17A8CB9C
		/// @DnDParent : 719E7DB8
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}