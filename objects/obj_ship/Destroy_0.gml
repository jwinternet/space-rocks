/// @description

lives -= 1;

with (obj_game){
	alarm[1] = room_speed;
}

audio_play_sound(snd_die, 1, false);

var _xx = x,
var _yy = y,
var _ib = image_blend;
with(obj_particles){
	part_particles_create_color(
		partSys, 
		_xx,
		_yy,
		partTypeShipDebris,
		_ib,
		10
	);
}