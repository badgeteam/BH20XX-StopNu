// This is an initial design for the front window
// for the BornHack StopNu light.
// Z dimension is only indicative to show the
// three construction elements
// X and Y dimensions are exact.
//

TAB_X_POSITION = 125;
TAB_Y_POSITION = 125;
TAB_ROUNDING = 15;
WINDOW_DIAMETER = 280;
SEALING_LIP_WIDTH = 15;
MOUNT_HOLE_DIAMETER = 6; // M6 bolts

WINDOW_RADIUS = WINDOW_DIAMETER / 2;
MOUNT_HOLE_RADIUS = MOUNT_HOLE_DIAMETER / 2;

difference () {
    union() {
 // mounting tab upper right + lower left
        hull() {
            translate([TAB_X_POSITION, TAB_Y_POSITION, 0]) {
                cylinder(h=2, r=TAB_ROUNDING);
            }
            translate([-TAB_X_POSITION, -TAB_Y_POSITION, 0]) {
                cylinder(h=2, r=TAB_ROUNDING);
            }
        }
 // mounting tab upper left + lower right       
        hull () {
            translate([TAB_X_POSITION, -TAB_Y_POSITION, 0]) {
                cylinder(h=2, r=TAB_ROUNDING);
            }
            translate([-TAB_X_POSITION, TAB_Y_POSITION, 0]) {
                cylinder(h=2, r=TAB_ROUNDING);
            }
        }
 // front glass, diameter 280mm
        cylinder(h=10, r=WINDOW_RADIUS, $fn=64);
 // sealing lip, diameter 310mm       
        cylinder(h=4, r=WINDOW_RADIUS + SEALING_LIP_WIDTH, $fn=64);
    }
 // holes in mounting tabs for M6 bolts    
    translate([TAB_X_POSITION, TAB_Y_POSITION, -5]) {
        cylinder(h=10, r=MOUNT_HOLE_RADIUS);
    }
    translate([-TAB_X_POSITION, -TAB_Y_POSITION, -5]) {
        cylinder(h=10, r=MOUNT_HOLE_RADIUS);
    }
    translate([TAB_X_POSITION, -TAB_Y_POSITION, -5]) {
        cylinder(h=10, r=MOUNT_HOLE_RADIUS);
    }
    translate([-TAB_X_POSITION, TAB_Y_POSITION, -5]) {
        cylinder(h=10, r=MOUNT_HOLE_RADIUS);
    }
}