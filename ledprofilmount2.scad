width=50;

difference(){
    
    union(){
hull(){
linear_extrude(width) 
polygon([[0,60],[50,60],[50,5],[40,5],[40,0],[55,0],[55,65],[0,65]]);

translate([0,0,width+5])
linear_extrude(1) 
polygon([[2,60],[50,60],[50,5],[40,5],[40,3],[52,3],[52,62],[2,62]]);
}
translate([0,65,width/2])
rotate([0,90,0])
linear_extrude(10)
polygon([[-10,0],[-5,8],[5,8],[10,0]]);


}
translate([0,5,0])
cube([50,55,60]);
}


