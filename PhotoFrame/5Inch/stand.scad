$fn=100;

stand1();

module stand0(){
    difference(){
        union(){
            translate([-4,-1.5,2])
            rotate([0,90,0])
            cylinder(r=2,h=22);

            minkowski()
            {
              cube([14,55,1.5]);
              cylinder(r=2,h=1.5);
            }
        }

        translate([0,-4,0])cube([14,10,4]);
    }
}

module stand1(){
    difference(){
        minkowski()
        {
          cube([20,14,3]);
          cylinder(r=3,h=3);
        }

        difference(){
            union(){
                translate([-1,12.6,2.4])rotate([0,90,0])cylinder(r=2.4,h=22.2);
                
                translate([19,10.2,0])cube([2.2,4.8,2.1]);
                translate([17,10.2,0])cube([2,8,5.5]);
                
                translate([-1,10.2,0])cube([2.2,4.8,2.1]);
                translate([1,10.2,0])cube([2,8,5.5]);
            }
            translate([3,10,0])cube([14,5,5]);
        }
    }
}
