package EpicCredits_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class sountrackbutton__38 extends MovieClip
   {
       
      
      public var open;
      
      public function sountrackbutton__38()
      {
         super();
         addFrameScript(0,this.frame1,6,this.frame7);
      }
      
      function frame1() : *
      {
         stop();
         if(!hasEventListener(MouseEvent.CLICK))
         {
            this.open = false;
            addEventListener(MouseEvent.CLICK,function(param1:*):void
            {
               open = !open;
               if(open)
               {
                  play();
               }
               else
               {
                  gotoAndStop("closed");
               }
            });
         }
      }
      
      function frame7() : *
      {
         stop();
      }
   }
}
