/// Generate Random Blood Explosions
var width = argument0;

instance_create(random_range(self.x,self.x+width), random_range(self.y-width,self.y+width), obj_Blood_Explosion);
effect_create_above(ef_smoke, random_range(self.x,self.x+width), random_range(self.y-width,self.y+width), 0, c_ltgray);
