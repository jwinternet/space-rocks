/// @description 

//Follow Target
if(instance_exists(target)){
	global.cameraX = target.x - (global.cameraWidth/2);
	global.cameraY = target.y - (global.cameraHeight/2);
	
	global.cameraX = clamp(global.cameraX, 0, room_width-global.cameraWidth);
	global.cameraY = clamp(global.cameraY, 0, room_height-global.cameraHeight);
}

//Camera shake
global.cameraX += random_range(-global.cameraShake, global.cameraShake);
global.cameraY += random_range(-global.cameraShake, global.cameraShake);

if(global.cameraShake > 0){
	global.cameraShake -= 0.2;
	if(global.cameraShake < 0) global.cameraShake = 0;
}

//Set camera position
camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);

//Parallax
layer_x("Parallax_0", global.cameraX*.98);
layer_y("Parallax_0", global.cameraY*.98);

layer_x("Parallax_1", global.cameraX*.90);
layer_y("Parallax_1", global.cameraY*.90);

layer_x("Parallax_2", global.cameraX*.83);
layer_y("Parallax_2", global.cameraY*.83);

layer_x("Parallax_3", global.cameraX*.76);
layer_y("Parallax_3", global.cameraY*.76);