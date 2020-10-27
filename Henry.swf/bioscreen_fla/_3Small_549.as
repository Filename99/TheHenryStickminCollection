package bioscreen_fla
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.Bios.BiosMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class _3Small_549 extends MovieClip
   {
       
      
      public var self;
      
      public function _3Small_549()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
         if(!this.hasEventListener(MouseEvent.CLICK))
         {
            Helpers.CreateButton(this,true,false);
            this.self = this;
            this.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):*
            {
               BiosMain.instance.GotoSubPage(self.name);
            });
         }
      }
   }
}
