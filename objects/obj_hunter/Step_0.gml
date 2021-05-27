/// @description 

//if player exists
if(!instance_exists(obj_ship)) exit;

//If player is inside range
if(point_distance(x, y, obj_ship.x, obj_ship.y) < 250){
	//Turn to look at player ship
	var new_angle = point_direction(x, y, obj_ship.x, obj_ship.y);
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	image_angle = lerp(image_angle, new_angle, 0.1);
	direction = image_angle;
	
	if(point_distance(x, y, obj_ship.x, obj_ship.y) < 150){
		speed -= 0.05;
	} else {
		speed += 0.01;
	}
	
	//fire_bullet
	bulletCounter++;
	if(bulletCounter >= 60){
		create_bullet(x, y, image_angle, 8, faction, other.id);
		bulletCounter = 0;
	}

} else {
	//Otherwise, no change
	speed = lerp(speed, 2, 0.1);
}