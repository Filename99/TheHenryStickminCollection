package ChairScene_fla
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class AchMain_10 extends MovieClip
   {
       
      
      public function AchMain_10()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,9,this.frame10);
      }
      
      function frame1() : *
      {
         Helpers.CreateButton(this,true,false);
         this.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            AchMain.instance.Toggle(stage);
         });
      }
      
      function frame2() : *
      {
         stop();
      }
      
      function frame10() : *
      {
         stop();
      }
   }
}
