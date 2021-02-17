$fn = 100;
// small cover
// cover(23.2, 25, 8 + 2.5);

// big cover
union() {
    translate([0, 0, -8])
    difference() {
        cylinder(h = 8, r = 23);
        cylinder(h = 8, r = 21);
    }

    difference() {
        cover(54, 56, 12);
        cylinder(h = 8, r = 21);
    }
}


module cover(r1, r2, h) {
    difference() {
        difference() {
            cylinder(h = h, r = r2);
            translate([0, 0, 2.5])
            cylinder(h = h - 2.5, r = r1);
        }

        difference() {
            ring(r2 - 1, r2);
            translate([0, 0, 1])
            donut(r1, r2);
        }
    }
}

module ring(r1, r2) {
    rotate_extrude(convexity = 10, $fn = 100)
    translate([r1, 0, 0])
    square(r2 - r1);
}

module donut(r1, r2) {
    rotate_extrude(convexity = 10, $fn = 100)
    translate([r1 + (r2 - r1) / 2, 0, 0])
    circle(r = (r2 - r1) / 2, $fn = 100);
}