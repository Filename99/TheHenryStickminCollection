package bioscreen_fla
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.Bios.BiosMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class StD_Button_566 extends MovieClip
   {
       
      
      public var self;
      
      public function StD_Button_566()
      {
         super();
         addFrameScript(1,this.frame2,10,this.frame11,23,this.frame24);
      }
      
      function frame2() : *
      {
         stop();
      }
      
      function frame11() : *
      {
         if(!this.hasEventListener(MouseEvent.CLICK))
         {
            this.self = this;
            Helpers.CreateButton(this,true,false);
            this.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):*
            {
               BiosMain.instance.GotoGamePage("std");
            });
         }
      }
      
      function frame24() : *
      {
         stop();
      }
   }
}
