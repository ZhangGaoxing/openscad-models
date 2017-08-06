// keychain hole
translate([0,22,0])difference(){
    cylinder(r=3.5,h=4,$fn=100);
    cylinder(r=2,h=4,$fn=100);
}


difference(){
    //cylinder(r=25,h=4,$fn=100);
    linear_extrude(4){
        text("🤗",size = 25,valign = "center",halign = "center",font = "Segoe UI Emoji",$fn=100);
    }
}