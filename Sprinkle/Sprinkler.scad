module screw(r=15){
    for(g=[0:1:240]){
        translate([cos(g)*r,sin(g)*r,(g)/40])
        rotate(a=[93,60,g])
        cylinder(.6,.6,.6,center=true,$fn=3);
    }
}

module cylinderWithScrew(){
    union(){
        // Cylinder shell
        difference(){
            cylinder(28,16.5,16.5,$fn=200);
            cylinder(28,15.5,15.5,$fn=200);
        }

        // Screw
        union(){
            translate([0,0,19])screw(15);
            translate([0,0,19])rotate([0,0,120])screw(15);
            translate([0,0,19])rotate([0,0,240])screw(15);
        }
    }
}

module sprinklerWall(){
    difference(){
        cylinder(35,35,16.5,$fn=200);
        cylinder(35,33.5,15.5,$fn=200);
        
        rotate([90,0,0])translate([0,22,18])cylinder(18,1.5,1.5,$fn=200);
    }
}

module sprinklerBottom(){
    difference(){
        cylinder(1,35,35,$fn=200);

        cylinder(2,1,1,$fn=200);

        for(i=[0:0.2:0.8]){
            rotate(i*360/0.8,[0,0,1])
            translate([0,6,0])
            cylinder(2,1,1,$fn=200);
        }

        for(i=[0:0.2:1.6]){
            rotate(i*360/1.6,[0,0,1])
            translate([0,12,0])
            cylinder(2,1,1,$fn=200);
        }

        for(i=[0:0.2:2.4]){
            rotate(i*360/2.4,[0,0,1])
            translate([0,18,0])
            cylinder(2,1,1,$fn=200);
        }

        for(i=[0:0.2:3.2]){
            rotate(i*360/3.2,[0,0,1])
            translate([0,24,0])
            cylinder(2,1,1,$fn=200);
        }
        
        for(i=[0:0.2:4]){
            rotate(i*360/4,[0,0,1])
            translate([0,30,0])
            cylinder(2,1,1,$fn=200);
        }
    }
}

union(){
    sprinklerBottom();
    translate([0,0,1])sprinklerWall();
    translate([0,0,36])cylinderWithScrew();
}


        
