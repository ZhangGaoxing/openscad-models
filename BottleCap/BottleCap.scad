module screw(r=15){
    for(g=[0:1:240]){
        translate([cos(g)*r,sin(g)*r,(g)/40])
        rotate(a=[93,60,g])
        cylinder(.6,.6,.6,center=true,$fn=3);
    }
}

module ring(h,r1,r2){
    difference(){
        cylinder(h,r1,r1,$fn=200);
        cylinder(h,r2,r2,$fn=200);
    }
}

union(){
    // Cylinder shell
    difference(){
        cylinder(14,16.5,16.5,$fn=200);
        translate([0,0,2])cylinder(13,15.5,15.5,$fn=200);
    }
    // Patterns on the shell
    for(i=[0:0.2:10]){
        rotate(i*360/10,[0,0,1])
        translate([0,16.5,0])
        cylinder(14,.5,.5,$fn=200);
    }
    // Washer
    translate([0,0,1])ring(4,12.5,12);
    translate([0,0,1])ring(2,14.5,14);
    // Screw
    union(){
        translate([0,0,6])screw(15);
        translate([0,0,6])rotate([0,0,120])screw(15);
        translate([0,0,6])rotate([0,0,240])screw(15);
    }
}

