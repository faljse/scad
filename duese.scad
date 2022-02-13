
TubeRI = 4;
Length=100;
    
    


translate([0,0,10])
difference(){
cylinder(h = 20, r1 = TubeRI*3+2, r2 = TubeRI, center = true );
cylinder(h = 22, r1 = TubeRI*3, r2 = TubeRI-2, center = true );
};
translate([0,0,25])
difference(){
cylinder(h=10,r=TubeRI,center=true);
cylinder(h=12,r=TubeRI-2,center=true);
}
translate([-TubeRI*3,-2.5,0])
cube([Length,5,5]);
translate([Length-TubeRI*3,-2.5,0])
prism(5, 10, 5);


//Draw a prism based on a 
//right angled triangle
//l - length of prism
//w - width of triangle
//h - height of triangle
module prism(l, w, h) {
       polyhedron(points=[
               [0,0,h],           // 0    front top corner
               [0,0,0],[w,0,0],   // 1, 2 front left & right bottom corners
               [0,l,h],           // 3    back top corner
               [0,l,0],[w,l,0]    // 4, 5 back left & right bottom corners
       ], faces=[ // points for all faces must be ordered clockwise when looking in
               [0,2,1],    // top face
               [3,4,5],    // base face
               [0,1,4,3],  // h face
               [1,2,5,4],  // w face
               [0,3,5,2],  // hypotenuse face
       ]);
}