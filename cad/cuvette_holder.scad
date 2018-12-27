//import("/home/anveshi/Downloads/receiver.stl");

$fn=30;
module box(box_x,box_y,box_z,box_t,win_y,win_z,cyl_r,cyl_h,cyl_t){
    difference(){
        union(){
            difference(){
                cube([box_x,box_y,box_z]);
                union(){
                            //
                            translate([box_t,box_t,0])
                            cube([box_x-(2*box_t),box_y-(2*box_t),box_z]);
                            translate([box_x-box_t,box_y/2-win_y/2,box_z/2-win_z/2])
                    
                            cube([box_t,win_y,win_z]);
                            translate([0,box_y/2-2,box_t])
                            cube([box_t,4,4]); 
                }    
            }
          translate([0,box_y/2,box_z/2])
          rotate(a=90,v=[0,1,0])
          cylinder(r=cyl_r,h=cyl_h);
        }
       translate([0,box_y/2,box_z/2])
       rotate(a=90,v=[0,1,0])
       cylinder(r=cyl_r-1,h=cyl_h);
        
    }
    translate([0,-2,-2])cube([box_x,box_y+2+2,box_t]);
    translate([40,-2,-2])cube([box_x,box_y+2+2,box_t]);
    translate([40,-2,-2])cube([box_x,box_y+2+2,box_t]);
    translate([40,-2,-2])cube([box_x,box_y+2+2,box_t]);
}
translate([0,2,2])box(30,30,50,2,1,25,4,6,1);
