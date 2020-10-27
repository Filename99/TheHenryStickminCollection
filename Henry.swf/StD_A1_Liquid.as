package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class StD_A1_Liquid extends MovieClip
   {
       
      
      public var skipbutton:MovieClip;
      
      public function StD_A1_Liquid()
      {
         super();
         addFrameScript(48,this.frame49,552,this.frame553);
      }
      
      function frame49() : *
      {
         Helpers.CreateButton(this.skipbutton,true,false);
         this.skipbutton.addEventListener(MouseEvent.CLICK,function skipbuttonClicked(param1:MouseEvent):void
         {
            removeEventListener(MouseEvent.CLICK,skipbuttonClicked);
            gotoAndPlay("skipped");
         });
      }
      
      function frame553() : *
      {
         StDMain.instance.ShowFail("std_liquid","sneakinmain");
         stop();
      }
   }
}
