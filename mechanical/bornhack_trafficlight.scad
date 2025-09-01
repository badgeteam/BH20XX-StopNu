// This is an initial design for the front window
// for the BornHack StopNu light.
// Z dimension is only indicative to show the
// three construction elements
// X and Y dimensions are exact.
//
difference () {
    union() {
 // mounting tab upper right + lower left
        hull() {
            translate([125, 125, 0]) {
                cylinder(h=2, r=15);
            }
            translate([-125, -125, 0]) {
                cylinder(h=2, r=15);
            }
        }
 // mounting tab upper left + lower right       
        hull () {
            translate([125, -125, 0]) {
                cylinder(h=2, r=15);
            }
            translate([-125, 125, 0]) {
                cylinder(h=2, r=15);
            }
        }
 // front glass, diameter 280mm
        cylinder(h=10, r=140, $fn=64);
 // sealing lip, diameter 310mm       
        cylinder(h=4, r=155, $fn=64);
    }
 // holes in mounting tabs for M6 bolts    
    translate([125, 125, -5]) {
        cylinder(h=10, r=3);
    }
    translate([-125, -125, -5]) {
        cylinder(h=10, r=3);
    }
    translate([125, -125, -5]) {
        cylinder(h=10, r=3);
    }
    translate([-125, 125, -5]) {
        cylinder(h=10, r=3);
    }
}