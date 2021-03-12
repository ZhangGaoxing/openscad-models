$fn = 200;

// raspberry pi
//base_board(85, 56, 2.5, 1.5, 58, 49, 3.5, 3.5);
//top_board(85, 56, 2.5, 1.5, 58, 49, 3.5, 3.5, 29.25, 32.5);

// orange pi 4
//base_board(91, 56, 2.5, 1.5, 84, 49, 3.5, 3.5);
//top_board(91, 56, 2.5, 1.5, 84, 49, 3.5, 3.5, 29.25, 32.5);

// orange pi 4
base_board(69, 48, 2.5, 1.5, 62, 41, 3.5, 3.5);
//top_board(69, 48, 2.5, 1.5, 62, 41, 3.5, 3.5, 29.25, 32.5);

module base_board(x, y, z, r, x_apart, y_apart, x_offset, y_offset) {
    difference() {
        minkowski() {
            cube([x, y, z / 2]);
            cylinder(h = z / 2, r = 3);
        }
        
        translate([x_offset, y_offset, 0])cylinder(h = z, r = r);
        translate([x_offset + x_apart, y_offset, 0])cylinder(h = z, r = r);
            
        translate([x_offset, y_offset + y_apart, 0])cylinder(h = z, r = r);
        translate([x_offset + x_apart, y_offset + y_apart, 0])cylinder(h = z, r = r);
    }
}

module top_board(x, y, z, r, x_apart, y_apart, x_offset, y_offset, fan_x_offset, fan_y_offset) {
    difference() {
        base_board(x, y, z, r, x_apart, y_apart, x_offset, y_offset);
        translate([fan_x_offset, fan_y_offset, 0])
        cpu_fan(z);
    }
}

module rasp_top_board(z) {
    difference() {
        base_board(85, 56, z, 1.5, 58, 49, 3.5, 3.5);
        // GPIO
        //translate([7, 49.5, 0])cube([51, 6, z]);
        // Camera
        //translate([46.5, 3, 0])cube([1.5, 23, z]);
        // Display
        //translate([4, 16.5, 0])cube([1.5, 23, z]);
        // CPU fan
        translate([29.25, 32.5, 0])
        cpu_fan(z);
    }
}

module cpu_fan(z) {
    difference() {
        union() {
            ring(5, z);
            ring(7, z);
            ring(9, z);
            ring(11, z);
                
            translate([-12, -12, 0])cylinder(h = z, r = 1.5);
            translate([-12, 12, 0])cylinder(h = z, r = 1.5);
            translate([12, -12, 0])cylinder(h = z, r = 1.5);
            translate([12, 12, 0])cylinder(h = z, r = 1.5);
            }
        translate([-11, -0.5, 0])cube([22, 1, z]);
        rotate([0, 0, 90])translate([-11, -0.5, 0])cube([22, 1, z]);
    }
}

module ring(r, h){
    difference(){
        cylinder(h = h, r = r);
        cylinder(h = h, r = r - 1);
    }
}