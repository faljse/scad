$fn=50;
depth=65;
length=50;
height=50;
holesR=1.5;
holesWallR=2;


difference(){
cube([length, depth, 5]);
translate([8,5,0])
cube([length-16,depth-10,5]);
translate([length-2.5,depth-2.5,0])    
cylinder(10,holesR,holesR);
translate([2.5,depth-2.5,0])    
cylinder(10,holesR,holesR);
translate([length-2.5,7.5,0])    
cylinder(10,holesR,holesR);
translate([2.5,7.5,0])    
cylinder(10,holesR,holesR);
}

difference(){
cube([8,5,height]);
translate([4,0,height-4])
rotate([270,0,0])
cylinder(5,holesWallR,holesWallR);
}

difference(){
translate([length-8,0,0])
cube([8,5,height]);
translate([length-4,0,height-4])
rotate([270,0,0])
cylinder(5,holesWallR,holesWallR);
}