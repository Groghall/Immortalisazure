package  {
	import flash.events.Event;
	import org.papervision3d.objects.parsers.Max3DS;
	public class Fenrir extends PV3DARApp {
		
		private var _fenrir:Max3DS;
		 
		
		public function Fenrir() {
			this.init('Data/camera_para.dat', 'Data/flarlogo.pat');
			
		}
		
		protected override function onInit():void {
			super.onInit();
			
			this._fenrir = new Max3DS();
			this._fenrir.load("assets/fenrir.3ds", null, "./assets/");
			this._fenrir.scale = 2.75;
			this._fenrir.rotationX = 270;
			this._baseNode.addChild(this._fenrir);
			this.addEventListener(Event.ENTER_FRAME, this._update);
		}
		
		private function _update(e:Event):void {
			this._fenrir.rotationZ -= 5
		}
	}
}
