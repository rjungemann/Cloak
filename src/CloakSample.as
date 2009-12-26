package {
	import flash.display.Sprite;
	import flash.text.TextField;
	import com.teamsketchy.util.Cloak;
	
	public class CloakSample extends Sprite {
		public function CloakSample() {
			var s:Sprite = new Sprite();
			s.graphics.beginFill(0x000000);
			s.graphics.drawRect(0, 0, 100, 100);

			var c:Cloak = Cloak.create(100, 100, s);

			var s2:Sprite = new Sprite();
			s2.graphics.beginFill(0x00ff00);
			s2.graphics.drawRect(0, 0, 80, 80);

			c.recreate(100, 100, s2);

			addChild(c);

			var c2:Cloak = Cloak.sew(100, 100, function(s:Sprite):void {
				s.graphics.beginFill(0xff0000);					
				s.graphics.drawRect(0, 0, 50, 50);
			});
			c2.x = 100;

			c.resew(100, 100, function(s:Sprite):void {
				s.graphics.beginFill(0x0000ff);					
				s.graphics.drawRect(0, 0, 50, 50);
			});

			addChild(c2);

			var text:TextField = new TextField();
			text.text = "If a 50px blue square is at 0, 0, and 50px red square is at 100, 0, the program runs correctly.";
			text.width = stage.stageWidth, text.height = 40;
			text.y = stage.stageHeight - text.height;

			addChild(text);
		}
	}
}