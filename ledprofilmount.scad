depth=50.80;
width=15.00;
height=40;
ledHeight=31.70;

color("green",0.5){
color([1,0,0]) 
translate([0,-width/2,0]) 
difference()
{
    union() {
        translate([0,0,5])
        cube([depth, width, height-5]); 
            
        translate([1,width,12])
        rotate([45,0,0])
        cube([depth-2, 10, 10]);

        translate([1,0,12])
        rotate([45,0,0])
        cube([depth-2, 10, 10]);
    }

    translate([3, -1, ledHeight+5])
    cube([depth-6, width+2, 30]);

    translate([2, -1, ledHeight+5])
    cube([depth-4, width+2, 2]);

    translate([0, width/2, 19])
    rotate([0,90,0])
    cylinder(100, r=4);

    translate([0, width/2, 19])
    rotate([0,90,0])
    cylinder(5, r=7 );
}





translate([0,width/2,5])
wedge();
mirror([0,1,0])
translate([0,width/2,5])
wedge();
}

module wedge() {
translate([depth/2,-width/2,0])
scale([depth/20,1,1])
rotate([180,0,0])
hull(){
    linear_extrude(height=1)
    polygon([[-10,16],[-4,20],[5,20],[10,16],[10,0],[-10,0]]);
    translate([0,0,4])
    linear_extrude(height=1)
    polygon([[-8,11],[-2,16],[2,16],[8,11],[8,0],[-8,0]]);
}
}
