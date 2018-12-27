
$fn=30;
module lensholder1(){
difference(){
difference(){
cube([57/2,44,2]);
translate([57/2,44/2,0])cylinder(r=9.5/2,h=2);
}

translate([57/2-6,4,0])cube([6,2,2]);
}
translate([57/2,44-4,0])cube([6,2,2]);
}
module lensholder2(){
difference(){
difference(){
cube([57/2,44,2]);
translate([57/2,44/2,0])cylinder(r=9.5/2,h=2);
}

translate([57/2-6,2,0])cube([6,2,2]);
}
translate([57/2,44-6,0])cube([6,2,2]);
}
lensholder1();
translate([57+10,44,2])rotate(a=180,v=[1,0,0])mirror([1,0,0])lensholder2();

