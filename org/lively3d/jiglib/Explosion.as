package org.lively3d.jiglib
{

	import org.papervision3d.materials.MovieMaterial;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.primitives.Cube;

	public class Explosion extends Cube 
	{
		//Embed your images assets
		[Embed (source="/../assets/swf/explosion.swf", symbol="explosion")]
		private var BMFront : Class; 
		[Embed (source="/../assets/swf/explosion.swf", symbol="explosion")]
		private var BMRight : Class; 
		
		
		
		public function Explosion()
		{	
			var bmFront : MovieMaterial = new MovieMaterial(new BMFront(), false, true);
			var bmRight : MovieMaterial = new MovieMaterial(new BMRight(), false, true); 

			 
			//Set your material to double side so you'll see the inside of your skybox
			
			bmFront.doubleSided = true; 
			bmRight.doubleSided = true; 
			
		    //Create your material list

			var materials : MaterialsList = new MaterialsList(); 
			
			//Add Your Materials to your Materials list
			materials.addMaterial(bmFront, "front"); 
			materials.addMaterial(bmRight, "right");
        
            // Add your materials, large sides, and low segments to your super
			super(materials,256,256,6,6);
			
			
		}
		
	}
}