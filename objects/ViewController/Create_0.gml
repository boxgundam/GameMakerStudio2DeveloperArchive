trace = "";

// Enable viewports
view_enabled = true;

// Reszie Window
window_set_size(WINDOW_WIDTH, WINDOW_HEIGHT);
room_width = WINDOW_WIDTH;
room_height = WINDOW_HEIGHT;
surface_resize(application_surface, WINDOW_WIDTH, WINDOW_HEIGHT);

// Create default viewport (index 0)
view_visible[0] = true;
view_camera[0] = camera_create_view(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT);

// Set default view size
view_set_wport(0, WINDOW_WIDTH);
view_set_hport(0, WINDOW_HEIGHT);

// Minimap settings
minimapWidth =  WINDOW_WIDTH * MINIMAP_SCALE;
minimapHeight =  WINDOW_HEIGHT * MINIMAP_SCALE;
minimapX =  WINDOW_WIDTH - minimapWidth - MINIMAP_BORDER_WIDTH - MINIMAP_EDGE_DISTANCE;
minimapY =  WINDOW_HEIGHT - minimapHeight - MINIMAP_BORDER_WIDTH - MINIMAP_EDGE_DISTANCE;


// Create minimap viewport (index 1)
var minimapViewWidth =  minimapWidth * MINIMAP_ZOOM;
var minimapViewHeight =  minimapHeight * MINIMAP_ZOOM;
view_visible[1] = true;
view_camera[1] = camera_create_view(-(minimapViewWidth - room_width)/2, -(minimapViewHeight - room_height)/2, minimapViewWidth, minimapViewHeight);

// Set minimap position and size on screen
view_set_xport(1, minimapX);
view_set_yport(1, minimapY);
view_set_wport(1, minimapWidth);
view_set_hport(1, minimapHeight);