difference () {
    union() {
        hull() {
            translate([125, 125, 0]) {
                cylinder(h=2, r=15);
            }
            translate([-125, -125, 0]) {
                cylinder(h=2, r=15);
            }
        }
        hull () {
            translate([125, -125, 0]) {
                cylinder(h=2, r=15);
            }
            translate([-125, 125, 0]) {
                cylinder(h=2, r=15);
            }
        }
        cylinder(h=4, r=155, $fn=64);
        cylinder(h=10, r=140, $fn=64);
    }
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