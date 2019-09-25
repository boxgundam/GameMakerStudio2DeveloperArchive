/// @desc Draw a bordered rectangle (outer)
/// @arg x1 The x coordinate of the top left corner of the rectangle.
/// @arg y1 The y coordinate of the top left corner of the rectangle.
/// @arg x2 The x coordinate of the bottom right corner of the rectangle.
/// @arg y2 The y coordinate of the bottom right corner of the rectangle.
/// @arg width The width of the border.
/// @arg col The colour of the border.

var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var width = argument4;
var col = argument5;

// Top border
draw_rectangle_color(x1 - width, y1 - width, x2 + width, y1, col, col, col, col, false);

// Bottom border
draw_rectangle_color(x1 - width, y2, x2 + width, y2 + width, col, col, col, col, false);

// Left border
draw_rectangle_color(x1 - width, y1 - width, x1, y2 + width, col, col, col, col, false);

// Right border
draw_rectangle_color(x2, y1 - width, x2 + width, y2 + width, col, col, col, col, false);