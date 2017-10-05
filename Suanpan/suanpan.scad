module frame(){
    difference(){
        cube([274,84,22.5]);  //[274，87，22.5]
        
        translate([4,4,0])cube([266,47,22.5]);  //[266,50,22.5]
        translate([4,55,0])cube([266,25,22.5]);  //[4,58,0]
        
        for(i=[0:1:12])
            translate([17+i*20,2,15])colRaw();
        
    }
}

module colRaw(){
    rotate([-90,0,0])cylinder(r=2.05,h=87,$fn=200);
}

// r=1.85
module col(r){
    cylinder(r=r,h=82,$fn=200);
}

module boll(){
    difference(){
        intersection(){
            cylinder(r=9,h=7,$fn=200,center=true);
            scale([1,1,0.6])sphere(r=9,$fn=200);
        }
        
        translate([0,0,-40])col(2.5);
    }
}

frame();
//col(1.85);
//boll();