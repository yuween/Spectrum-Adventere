//Feather disable all

var _string = "";
_string += concat("Left          = ", input_value("left"  ), "    ", input_binding_get_name(input_binding_get("left"  )), "\n");
_string += concat("Right         = ", input_value("right" ), "    ", input_binding_get_name(input_binding_get("right" )), "\n");
_string += concat("Up            = ", input_value("up"    ), "    ", input_binding_get_name(input_binding_get("up"    )), "\n");
_string += concat("Down          = ", input_value("down"  ), "    ", input_binding_get_name(input_binding_get("down"  )), "\n");
_string += concat("Accept        = ", input_value("accept"), "    ", input_binding_get_name(input_binding_get("accept")), "\n");
_string += concat("Cancel        = ", input_value("cancel"), "    ", input_binding_get_name(input_binding_get("cancel")), "\n");
_string += concat("Pause         = ", input_value("pause" ), "    ", input_binding_get_name(input_binding_get("pause" )), "\n");
_string += concat("Recent (all)  = ", input_check_press_most_recent(), "\n");
_string += concat("Recent (4dir) = ", input_check_press_most_recent(["left", "right", "up", "down"]), "\n");
_string += concat("Repeat        = ", input_check_repeat("up"), "\n");
draw_text(10, 10, _string);