/// Generate Random Explosions
var choice = irandom(3);
var width = argument0;

if (choice == 0) 
{
    instance_create(random_range(self.x-width,self.x+width), random_range(self.y-width,self.y+width), obj_Explosion_Small);
    effect_create_above(ef_smoke, random_range(self.x-width,self.x+width), random_range(self.y-width,self.y+width), 0, c_ltgray);
}
else if (choice == 1) 
{
    instance_create(random_range(self.x-width,self.x+width), random_range(self.y-width,self.y+width), obj_Explosion_Medium);
    effect_create_above(ef_smoke, random_range(self.x-width,self.x+width), random_range(self.y-width,self.y+width), 1, c_gray);
}
else if (choice == 2) 
{
    instance_create(random_range(self.x-width,self.x+width), random_range(self.y-width,self.y+width), obj_Explosion_Large);
    effect_create_above(ef_smoke, random_range(self.x-width,self.x+width), random_range(self.y-width,self.y+width), 2, c_dkgray);
}
