if (global.gameOver || (global.bday && !global.inverse)) exit;

randomize();
var i = instance_create_layer(room_width + 100, room_height - 100, "Instances", obj_inverse);

alarm[3] = room_speed * 5;