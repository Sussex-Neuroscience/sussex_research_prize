tolerance = 0.1;
module towers(){
for(i=[0:10:170]){
translate([0,0,i]){
cube([10,30,9.5]);

translate([30,0,0]){
cube([10,30,9.5]);
}//end translate

}//end translate
}//end for


for(i=[9.5:10:170]){
    translate([.250,.250,i-0.25]){
    cube([9.5,29.5,1]);
    }
    translate([30.250,.250,i-0.25]){
    cube([9.5,29.5,1]);
    }
    
}

translate([0 ,0,21.5]){
cube([40,30,8]);
}
}


module hole_makers(tolerance = 0.1){
    translate([0,0,0]){
cube([10+2*tolerance,30+2*tolerance,20]);

translate([30,0,0]){
cube([10+2*tolerance,30+2*tolerance,20]);
}//end translate

}//end translate
    
    }//end module
//translate([5,5,19.9]){
translate([0,50,0]){    
color("red")
hole_makers();
}
union(){
    hole_makers(tolerance=0);
translate([0,0,20]){
towers();
}
}//end union
//}
//cube([50,50,20]);
