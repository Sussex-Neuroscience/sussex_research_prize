module towers(){
for(i=[0:10:170]){
translate([0,0,i]){
cube([10,30,9.5]);

translate([30,0,0]){
cube([10,30,9.5]);
}
}
}


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

//translate([5,5,19.9]){
towers();
//}
//cube([50,50,20]);
