module bottom(){
    difference(){
        difference(){
            cube([54,104,43],center=true);

            translate([0,0,2])cube([51,101,41],center=true);
        }
        translate([0,0,16.5])difference(){
            cube([54,104,10],center=true);
            cube([52.5,103,10],center=true);
        }
    }
}

module top(){
    difference(){
        cube([54,104,12],center=true);
        translate([0,0,1])cube([53,103.2,10],center=true);
    }
}

top();
//bottom();