module bottom(){
    difference(){
        union(){
            cube([30.4,27.4,1.2]);
            
            translate([4,23.5,0.5])difference(){
                cylinder(r=2,h=5,$fn=200);
                cylinder(r=1,h=5,$fn=200);
            }

            translate([27,3.5,0.5])difference(){
                cylinder(r=2,h=5,$fn=200);
                cylinder(r=1,h=5,$fn=200);
            }

            translate([6,13.5,0.5])difference(){
                cylinder(r=2,h=5,$fn=200);
                cylinder(r=1,h=5,$fn=200);
            }

            translate([24,13.5,0.5])difference(){
                cylinder(r=2,h=5,$fn=200);
                cylinder(r=1,h=5,$fn=200);
            }
        }

        translate([15.2,13.7,0])difference(){
            cylinder(r=4.4,h=1.2,$fn=200);
            
            translate([0.1,-0.1,0])linear_extrude(1.2){
                text("❄",size = 7,valign = "center",halign = "center",font = "Segoe UI Emoji",$fn=100);
            }

        }
    }
}

module hall(){
    difference(){
        cube([33.6,30.6,25],center=true);
        cube([31.2,28.2,25],center=true);
        translate([14,0,-5])rotate([0,90,0])cylinder(r=2,h=5,$fn=200);
    }
}

module top(){
    difference(){
        cube([30.8,27.8,1.2],center=true);
        cylinder(r=7.4,h=10,$fn=200,center=true);
    }
}

top();

