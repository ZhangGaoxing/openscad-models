module bottom(){
    intersection(){
        scale([1,1,0.7])sphere(r=15,$fn=200);
        cylinder(r=15,h=6,center=true,$fn=200);
    }
}

module top(){
    translate([0,0,3])cylinder(r1=14.3,r2=5,h=4,$fn=200);
translate([0,0,7])cylinder(r=5,h=13,$fn=200);
translate([0,0,20])scale([1.2,1.2,0.5])sphere(r=5,$fn=200);
}

bottom();
