//ini_open("keybind.ini");
//global.right_key = ini_read_real("save", "right", vk_right);
//global.left_key = ini_read_real("save", "left", vk_left);
//global.up_key = ini_read_real("save", "up", vk_up);
//global.down_key = ini_read_real("save", "down", vk_down);
//global.interact_key = ini_read_real("save", "interact", vk_space);
//ini_close();

global.right_key = vk_right
global.left_key = vk_left
global.up_key = vk_up
global.down_key = vk_down
global.interact_key = vk_space
global.action_key = ord("E")

global.fullscreen = false;
global.volume = 0.5

global.iCamera = instance_create_layer(0,0,layer,obj_camera);
global.textSpeed = 0.75;
global.talking = false;

ini_open("phighscore.ini");
global.best_time = ini_read_real("highscore", "best", 0);
ini_close();



image_alpha = 0;
