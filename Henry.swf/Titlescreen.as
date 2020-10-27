package
{
   import com.innersloth.FaderSong;
   import com.innersloth.Helpers;
   import com.innersloth.henry.MainScene;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class Titlescreen extends MovieClip
   {
       
      
      public var self;
      
      public function Titlescreen()
      {
         super();
         addFrameScript(75,this.frame76,123,this.frame124,136,this.frame137);
      }
      
      function frame76() : *
      {
         stop();
         this.self = this;
         this.addEventListener(MouseEvent.CLICK,function titleclick(param1:MouseEvent):void
         {
            self.removeEventListener(MouseEvent.CLICK,titleclick);
            self.gotoAndPlay("exittrans");
         });
         Helpers.StartFaderMusic(new FaderSong(titlesong,0.8));
      }
      
      function frame124() : *
      {
         Helpers.StopFaderMusic();
      }
      
      function frame137() : *
      {
         stop();
         if(MainScene.instance)
         {
            MainScene.instance.Refresh();
            this.stage.addChild(MainScene.instance);
            this.stage.removeChild(this);
         }
      }
   }
}
