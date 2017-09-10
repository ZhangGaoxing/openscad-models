module base(){
    difference(){
        minkowski(){
            cube([107,76,14.5]);
            cylinder(r=2,h=14.5,$fn=200);
        }

        translate([0,0,2])cube([107,76,29]);
    }
}

module col(){
    difference(){
        cylinder(r=3,h=4,$fn=200);
        cylinder(r=1.2,h=4,$fn=200);
    }
}

module baseWithCol(){
    translate([4.5,16,1])col();
    translate([103,12.5,1])col();
    translate([4.3,68,1])col();
    translate([97.5,68,1])col();
    
    base();
}

module base1(){
    difference(){
        baseWithCol();
    
        translate([11.5,4,8])rotate([90,0,0])cylinder(r=2,h=8,$fn=200);
        
        translate([20.5,-4,3])cube([16.5,8,11]);
        
        translate([44.5,-4,4.5])cube([15,8,5.5]);
        
        translate([-4,23.5,6.8])cube([8,14.5,8]);
        
        translate([-4,43,6.8])cube([8,14.5,8]);
        
        translate([13.5,82,8.5])rotate([90,0,0])cylinder(r=3.5,h=8,$fn=200);
        
        translate([25,82,8.5])rotate([90,0,0])cylinder(r=3.5,h=8,$fn=200);
        
        translate([33,76,6])cube([14.5,8,2]);
        
        translate([70.5,82,7])rotate([90,0,0])cylinder(r=1.5,h=8,$fn=200);
        
        translate([84,82,8])rotate([90,0,0])cylinder(r=2,h=8,$fn=200);
        
        translate([105,38,14])rotate([90,0,90])linear_extrude(4){
        text("≡ ≡ ≡",size=14,valign="center",halign="center",$fn=100);
        }
    }
}

module ring(r1){
    difference(){
        cylinder(r=r1,h=2,$fn=200);
        cylinder(r=r1-1.5,h=2,$fn=200);
    }
}

module hole(){
    translate([18.5,18.5,0])difference(){
        union(){
            ring(18.5);
            ring(15.5);
            ring(12.5);
            ring(9.5);
            ring(6.5);
        }
        
        translate([-19,-0.75,0])cube([38,1.5,2]);
        
        translate([-0.75,-19,0])cube([1.5,38,2]);
    }
}

module top(){
    difference(){
        cube([106.5,75.5,2]);
        
        translate([18,17,0])hole();
        translate([57,17,0])hole();
    }
}

module switch(){
    translate([0,0,0.3])cylinder(r=1.7,h=5,$fn=200);
    cylinder(r=2.1,h=0.3,$fn=200);
}

//base1();
top();
//switch();