package org.lively3d.jiglib
{

	import org.papervision3d.materials.BitmapMaterial;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.primitives.Cube;

	public class Skybox extends Cube 
	{
		//Embed your images assets
		[Embed (source="/../assets/skybox/top01.jpg")]
		private var BMTop : Class; 
		[Embed (source="/../assets/skybox/side10.jpg")]
		private var BMBottom : Class; 
		[Embed (source="/../assets/skybox/side08.jpg")]
		private var BMFront : Class; 
		[Embed (source="/../assets/skybox/bottom02.jpg")]
		private var BMBack : Class; 
		[Embed (source="/../assets/skybox/side09.jpg")]
		private var BMRight : Class; 
		[Embed (source="/../assets/skybox/top02.jpg")]
		private var BMLeft : Class; 
		
		
		
		public function Skybox()
		{
			var bmTop : BitmapMaterial = new BitmapMaterial(new BMTop().bitmapData);
			var bmBottom : BitmapMaterial = new BitmapMaterial(new BMBottom().bitmapData); 
			var bmFront : BitmapMaterial = new BitmapMaterial(new BMFront().bitmapData);
			var bmBack : BitmapMaterial = new BitmapMaterial(new BMBack().bitmapData); 
			var bmRight : BitmapMaterial = new BitmapMaterial(new BMRight().bitmapData); 
			var bmLeft : BitmapMaterial = new BitmapMaterial(new BMLeft().bitmapData); 
			 
			//Set your material to double side so you'll see the inside of your skybox
			
			bmTop.doubleSided = true; 
			bmBottom.doubleSided = true; 
			bmFront.doubleSided = true; 
			bmBack.doubleSided = true; 
			bmRight.doubleSided = true; 
			bmLeft.doubleSided = true; 
			
		    //Create your material list

			var materials : MaterialsList = new MaterialsList(); 
			
			//Add Your Materials to your Materials list
			materials.addMaterial(bmTop, "top"); 
			materials.addMaterial(bmBottom, "bottom"); 
			materials.addMaterial(bmFront, "front"); 
			materials.addMaterial(bmBack, "back"); 
			materials.addMaterial(bmRight, "right");
			materials.addMaterial(bmLeft, "left"); 

        
            // Add your materials, large sides, and low segments to your super
			super(materials,5000,5000,5000,6,6,6, Cube.NONE, Cube.BOTTOM);
			y = 2500-8;
			
			
		}
		
	}
}