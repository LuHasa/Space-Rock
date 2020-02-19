/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 3B7518A3
/// @DnDArgument : "soundid" "snd_zap"
/// @DnDSaveInfo : "soundid" "38bf4de7-76f4-4139-b14f-97c35fc9d7f2"
audio_play_sound(snd_zap, 0, 0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 60A2DF79
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "newBullet"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "objectid" "ob_bullet"
/// @DnDSaveInfo : "objectid" "2ac40cb0-4bdd-438e-a5dc-c9f7556bc4cc"
var newBullet = instance_create_layer(x + 0, y + 0, "Instances", ob_bullet);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 48CB06F9
/// @DnDArgument : "expr" "image_angle"
/// @DnDArgument : "var" "newBullet.direction"
newBullet.direction = image_angle;