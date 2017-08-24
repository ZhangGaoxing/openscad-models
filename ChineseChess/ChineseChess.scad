module body(){
    intersection(){
        cylinder(r=12.5,h=10,center=true,$fn=200);
        scale([1,1,0.8])sphere(r=12.5,$fn=200);
    }
}

module ring(){
    difference(){
        cylinder(r=10,h=0.6,$fn=200);
        cylinder(r=9,h=0.6,$fn=200);
    }
}

module male(text){
    difference(){
        cylinder(r=10,h=0.4,$fn=200);
        cylinder(r=9,h=0.4,$fn=200);
    }
    
    linear_extrude(0.4){
        text(text,size=12,valign="center",halign="center",font="LiSu",$fn=100);
    }
}

module female(text){
    difference(){
        body();
        translate([0,0,4.41])ring();
        translate([0,0,4.4])linear_extrude(0.6){
            text(text,size=12,valign="center",halign="center",font="LiSu",$fn=100);
        }
    }
}

male("傌");
//female("傌");
