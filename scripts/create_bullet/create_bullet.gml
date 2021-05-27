///@description create_bullet
///@arg direction
///@arg speed
///@arg faction
///@arg gun_type*

function create_bullet(_x, _y, _dir, _spd, _fac, _creator, _gun_type){
	// make _gun_type an optional arguement
    if (_gun_type == undefined) _gun_type = -1;
	
	//Choose Gun Type
	switch(_gun_type){
		case powerups.three_bullets:
			initialise_bullet(obj_bullet, _x, _y, _dir, _spd, _fac, _creator);
			//No break
		case powerups.two_bullets:
			audio_play_sound(snd_zap, 1, false);
			
			var _sep = 12;
			
			initialise_bullet(
				obj_bullet,
				_x + lengthdir_x(_sep, _dir + 90),
				_y + lengthdir_y(_sep, _dir + 90), 
				_dir, 
				_spd, 
				_fac,
				_creator
			);
			
			initialise_bullet(
				obj_bullet,
				_x + lengthdir_x(_sep, _dir - 90),
				_y + lengthdir_y(_sep, _dir - 90), 
				_dir, 
				_spd, 
				_fac,
				_creator
			);
			
			break;
					
		case powerups.four_bullets:
            audio_play_sound(snd_zap, 1, false);
            var _sep = 7;
            var _bullet_angle;
            var i = 0;
            
            repeat(4){
                _bullet_angle = _dir + (i * 90);
				initialise_bullet(
					obj_bullet,
					_x + lengthdir_x(_sep, _bullet_angle),
					_y + lengthdir_y(_sep, _bullet_angle), 
					_bullet_angle, 
					_spd, 
					_fac,
					_creator
				);
				i++;
			}
			break;
			
		case powerups.star_bullets:
            audio_play_sound(snd_zap, 1, false);
            var _sep = 7;
            var _bullet_angle;
            var i = 0;
            
            repeat(8){
                _bullet_angle = _dir + (i * 45);
				initialise_bullet(
					obj_bullet,
					_x + lengthdir_x(_sep, _bullet_angle),
					_y + lengthdir_y(_sep, _bullet_angle), 
					_bullet_angle, 
					_spd, 
					_fac,
					_creator
				);
				i++;
			}
			break;
			
		case powerups.laser_bullets:
			audio_play_sound(snd_zap, 1, false);
			initialise_bullet(obj_laser, _x, _y, _dir, _spd, _fac, _creator);
			break;
			
		default:
			audio_play_sound(snd_zap, 1, false);
			initialise_bullet(obj_bullet, _x, _y, _dir, _spd, _fac, _creator);
			break;
	}	
}