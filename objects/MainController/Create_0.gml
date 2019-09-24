#macro SCROLL_ENABLED true
#macro SCROLL_SPEED 5
#macro SCROLL_EDGE_DISTANCE 50
#macro WINDOW_WIDTH 640
#macro WINDOW_HEIGHT 480
#macro MINIMAP_SCALE 0.2
#macro MINIMAP_ZOOM 4
#macro MINIMAP_EDGE_DISTANCE 10
#macro MINIMAP_BORDER_WIDTH 2
#macro MINIMAP_BORDER_COLOR c_white

global.instanceDepth = self.depth;

// Instantiate Controllers
instance_create_depth(0, 0, --global.instanceDepth, ViewController);