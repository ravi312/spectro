
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

//box
module box(){

    difference(){
        union(){
            translate([-92,0,0])
            {
                difference(){
                    cube([90,60,46]);
                    translate([2,2,2])cube([86,56,44]);
                }
                   
            }
            translate([-45,30,0])cylinder(r=4,h=6);
        }
        translate([-45,30,0])cylinder(r=3,h=5);
    }
    translate([-90+20,2,2+22])slot(3,10,6,56-10,5);
    translate([-90+20+20,2,2+22])slot(3,10,6,56-10,5);
    translate([-90+20+20+20,2,2+22])slot(3,10,6,56-10,5);
    
    
}
difference(){
    box();
    translate([-92+88,30-12.5,23-7.5])cube([2,25,15]);
}

//lid
module lid(){
    translate([-92,40,0])
    {
        union(){
            translate([0,0,2])cube([90,60,1]);
            translate([2,2,0])cube([86,56,2]);
        }
    }
}
translate([0,0,60])lid();

module slot(l,b,h,s,D){
    
    cube([l,b,h]);
    translate([0,s,0])cube([l,b,h]);
    cube([l,b,h]);
    translate([D,0,0]){
        cube([l,b,h]);
        translate([0,s,0])cube([l,b,h]);
    }
    
}



/*
lensholder();
translate([70,44,2])rotate(a=180,v=[1,0,0])mirror([1,0,0])lensholder();
*/

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

bracket(20,20,4);

*/