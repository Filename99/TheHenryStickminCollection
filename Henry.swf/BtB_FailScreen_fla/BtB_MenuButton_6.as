package BtB_FailScreen_fla
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.BtB.BtBMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class BtB_MenuButton_6 extends MovieClip
   {
       
      
      public function BtB_MenuButton_6()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,9,this.frame10);
      }
      
      function frame1() : *
      {
         Helpers.CreateButton(this,true,false);
         this.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            BtBMain.instance.GotoMainMenu();
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
