
$fn=30;
/*
scale([1,1,5]){
    cube([1,1,1/5], center=true);
}


union(){
    cube([5,5,1]); 
    cylinder(r=1,h=1);
}

intersection(){
    cube([5,5,1]); 
    cylinder(r=1,h=1);
}
difference(){
    cube([5,5,1]); 
    cylinder(r=1,h=1);
}

cube([5,5,1]);
translate([2.5,2.5,-0.5]){
    cylinder(r=1,h=2);
}



module plate(){
difference(){
cube([5,5,1]);
translate([2.5,2.5,-0.5]){
    cylinder(r=1,h=2);
}
}
}
rotate(a=0,v=[1,0,0])translate([-2.5,-2.5,-0.5]) plate();



module plate(l,w,t){
difference(){
cube([l,w,t]);
translate([l/2,w/2,0]){
    cylinder(r=0.5,h=t, $fn=100);
}
}
}
plate(10,10,2);

*/


module plate(l,w,t){
difference(){
cube([l,w,t]);
translate([l/2,w/2,0]){
    cylinder(r=0.5,h=t, $fn=100);
}
}
}

module bracket(l,w,t){
    rotate(a=90,v=[1,0,0])plate(l,w,t);
    plate(l,w,t);
}

bracket(10,10,4);

