$fn=30;
length=70;


height=20;
footL=20;
holeR=2;

lengthCap=30;
widthSlider=6;
holeCapR=3;


//main part
translate([length,0,0])
rotate([0,0,180])
difference(){
    union(){
        //base body
        rotate([90,0,0])
        linear_extrude(height=height)
        polygon(
        points=[[0,0],
            [length,0],
            [length,footL],
            [length-5,footL],
            [length-10,5],
            [0,5]]);
    //ripple
    for( i=[0:(length/2-15)]){
        translate([10+i*2,0,5])
        rotate([90,0,0])
        linear_extrude(height=height)
        polygon(points=[[0,0],[1,1],[2,0]]);
    }}
    //minus cube..
    translate([length/2-5,-height/2,0])
    cube([length-30, widthSlider+0.5, 20],center =true);
    //minus screw hole
    translate([length-10,-height/2,footL/2])
    rotate([0,90,0])
    cylinder(h=20,r=holeR);
    }

//cap


translate([0,height*2+10,0])
difference(){
    union(){
        translate([0,-height,0])
        cube([lengthCap,height,5]);
        for( i=[0:(lengthCap/2-1)]){
        translate([i*2,0,5])
        rotate([90,0,0])
        linear_extrude(height=height)
        polygon(points=[[0,0],[1,1],[2,0]]);
            
        translate([0,-height/2-((widthSlider-0.5)/2),0])
        cube([lengthCap, widthSlider-0.5, 9]);
    }}
    
    //minus cube..
    translate([lengthCap/2-5,-height/2,0])
        cylinder(h=20,r=holeCapR);
    translate([lengthCap/2+5,-height/2,0])
        cylinder(h=20,r=holeCapR);
}