// Author : Seb Lee-Delisle
// Blog : www.sebleedelisle.com
// Company : www.pluginmedia.net
// Mail : sebleedelisle@gmail.com
//
// This work is licensed under a Creative Commons 2.0  non-commercial share-alike License.

// Full details at 
// http://creativecommons.org/licenses/by-nc-sa/2.0/uk/
//Modified by Lively Slightly

package org.lively3d.jiglib
{
	import org.papervision3d.core.geom.Lines3D;
	import org.papervision3d.materials.special.LineMaterial;

	public class Arena extends Lines3D
	{
		public function Arena(w:Number, h:Number)
		{
			super(new LineMaterial(0x9988ff,1));
			
			drawArena(w,h); 
		}
		
		public function drawArena(w:Number, h:Number) : void
		{
			
			addNewSegmentedLine(4,8,-w/2, -8, -h/2, w/2, -8, -h/2); 
			
			addNewSegmentedLine(4,8,-w/2, -8, h/2, w/2, -8, h/2); 
			
			addNewSegmentedLine(4,8, 0, -8, -h/2, 0, -8, h/2); 
			//End segments (if you want end segments)
			//addNewSegmentedLine(4,8, w/2, -8, -h/2, w/2, -8, h/2); 
			
			//addNewSegmentedLine(4,8, -w/2, -8, -h/2, -w/2, -8, h/2); 
			
		}
	}
}