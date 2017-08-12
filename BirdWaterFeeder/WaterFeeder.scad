module feederTop(){
    difference(){
        union(){
            cylinder(r=23.5,h=95,$fn=200);
            cylinder(r=22.3,h=101,$fn=200);
        }
        translate([0,0,1])cylinder(r=21.3,h=100,$fn=200);
    }
}


module bottomPartA(){
    difference(){
        cylinder(r=23.5,h=21,$fn=200);
        translate([0,0,1])cylinder(r=22.5,h=20,$fn=200);
        translate([20,-3,2])cube([10,6,6]);
    }

}


module bottomPartB(){
    difference(){
        union(){
            cube([32,10,11]); 
            translate([32,5,0])cylinder(r=5,h=11,$fn=200);    
        }
        translate([0,1,1])union(){
            cube([32,8,10]); 
            translate([32,4,0])cylinder(r=4,h=10,$fn=200);    
        }    
    }
}


module feederBottom(){
    bottomPartA();
    translate([22.5,-5,0])bottomPartB();  
}


module fixer(){
    difference(){
        cylinder(r=26,h=7,$fn=200);
        cylinder(r=22,h=7,$fn=200);
        translate([-19,-30,0])cube([38,30,7]);
    }
    
    translate([-11,23,0])cube([22,3,7]);
    
    points=[
        [-10,0,0],[10,0,0],[6,14,0],[-6,14,0],
        [-10,0,7],[10,0,7],[6,14,7],[-6,14,7]
    ];

    faces=[
        [0,1,2,3],[3,7,4,0],[0,4,5,1],[1,2,6,5],
        [2,6,7,3],[4,5,6,7]
    ];

    translate([0,26,0])polyhedron(points,faces);
    
    translate([6.5,38,0])cylinder(r=2,h=7,$fn=200);
    mirror([1,0,0])translate([6.5,38,0])cylinder(r=2,h=7,$fn=200);
    
    translate([8,33.5,0])cylinder(r=2,h=7,$fn=200);
    mirror([1,0,0])translate([8,33.5,0])cylinder(r=2,h=7,$fn=200);
    
    translate([9.5,29,0])cylinder(r=2,h=7,$fn=200);
    mirror([1,0,0])translate([9.5,29,0])cylinder(r=2,h=7,$fn=200);
}

fixer();
//feederBottom();
//feederTop();