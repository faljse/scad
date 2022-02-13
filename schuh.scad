include <threads.scad>
$fn=15;
//cylinder(h=60,r=20);
difference(){
  metric_thread (30, 5, 20);
  translate([0,0,20])
    cube([15.4,15.4,30], center=true);
}

translate([40,0,0])
difference(){
cylinder(h=20,r=20)   ; 
   metric_thread (32, 5, 21, internal=true);

}
