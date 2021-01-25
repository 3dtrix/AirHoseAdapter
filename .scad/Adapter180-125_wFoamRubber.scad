$fn=100;
h = 30; // height of each module (3 total)
d1 = 62.5; // Smaller outer diameter
d2 = 90; // Bigger outer Diameter
d = 3; // Material strenght
FoamRubber =10; // foam rubber tape

//Ring dimensions


difference(){
    difference (){
    //bottom cylinder module
        difference(){
            cylinder(h,d2,d2);
            cylinder(h,d2-d,d2-d);
        }
        //foam rubber mounting
        difference(){
            translate([0,0,h-25]){cylinder(FoamRubber,d2,d2);}
            translate([0,0,h-25]){cylinder(FoamRubber,d2-0.5,d2-0.5);}
        }
    }
    // aerodynamic part
    cylinder(5,d2-0.5,d2-d);
}


//reduction module 
difference(){
    translate([0,0,h]){cylinder(h,d2,d1);}
    translate([0,0,h]){cylinder(h,d2-d,d1-d);}
}

//top cylinder module

difference(){
    difference(){
        difference(){
            translate([0,0,h+h]){cylinder(h,d1,d1);}
            translate([0,0,h+h]){cylinder(h,d1-d,d1-d);}
        }
        //foam rubber mounting
        difference(){
            translate([0,0,h*3-16]){cylinder(FoamRubber,d1,d1);}
            translate([0,0,h*3-16]){cylinder(FoamRubber,d1-0.5,d1-0.5);}
        }
    }
    // aerodynamic part
    translate([0,0,h*3-d*3]){cylinder(h,d1-d,d1);}
}