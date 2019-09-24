if(!SCROLL_ENABLED) exit;

var xPos = camera_get_view_x(view_camera[0]);
var yPos = camera_get_view_y(view_camera[0]);

trace = "none";

// Top edge hover
if(point_in_rectangle(mouse_x, mouse_y, xPos, yPos, xPos + WINDOW_WIDTH, yPos + SCROLL_EDGE_DISTANCE)) {
	yPos -= SCROLL_SPEED;
	trace = "top";
}

// Bottom edge hover
else if(point_in_rectangle(mouse_x, mouse_y, xPos, yPos + WINDOW_HEIGHT - SCROLL_EDGE_DISTANCE, xPos + WINDOW_WIDTH, yPos + WINDOW_HEIGHT)) {
	yPos += SCROLL_SPEED;
	trace = "bottom";
}
// Start a new "if" check to allow two directions for corners
// Left edge hover
if(point_in_rectangle(mouse_x, mouse_y, xPos, yPos, xPos + SCROLL_EDGE_DISTANCE, yPos + WINDOW_HEIGHT)) {
	xPos -= SCROLL_SPEED;
	trace = "left";
}
// Right edge hover
else if(point_in_rectangle(mouse_x, mouse_y, xPos + WINDOW_WIDTH - SCROLL_EDGE_DISTANCE, yPos, xPos + WINDOW_WIDTH, yPos + WINDOW_HEIGHT)) {
	xPos += SCROLL_SPEED;
	trace = "right";
}

camera_set_view_pos(view_camera[0], xPos, yPos);