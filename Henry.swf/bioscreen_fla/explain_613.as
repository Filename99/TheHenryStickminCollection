package bioscreen_fla
{
   import com.innersloth.Helpers;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class explain_613 extends MovieClip
   {
       
      
      public var gobutt:MovieClip;
      
      public function explain_613()
      {
         super();
         addFrameScript(0,this.frame1,7,this.frame8);
      }
      
      function frame1() : *
      {
         stop();
         Helpers.CreateButton(this.gobutt,true,false);
         this.gobutt.addEventListener(MouseEvent.CLICK,function(param1:*):*
         {
            gotoAndStop("hide");
         });
      }
      
      function frame8() : *
      {
         stop();
      }
   }
}
