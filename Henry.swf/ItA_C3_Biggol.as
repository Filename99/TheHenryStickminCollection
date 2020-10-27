package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_C3_Biggol extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var bio:MovieClip;
      
      public var menu:MovieClip;
      
      public var retryButton:MovieClip;
      
      public function ItA_C3_Biggol()
      {
         super();
         addFrameScript(0,this.frame1,204,this.frame205);
      }
      
      function frame1() : *
      {
         Helpers.StopMusic("chasesong");
      }
      
      function frame205() : *
      {
         stop();
         AchMain.instance.Unlock(stage,"ita_bigoron");
         Helpers.CreateButton(this.retryButton,true,false);
         this.retryButton.addEventListener(MouseEvent.MOUSE_UP,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAHallwayRun");
         });
         Helpers.CreateButton(this.menu,true,false);
         this.menu.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.GotoMainMenu();
         });
         Helpers.CreateButton(this.ach,true,false);
         this.ach.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            AchMain.instance.Toggle(stage);
         });
         Helpers.CreateButton(this.bio,true,false);
         this.bio.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            BiosMain.instance.Toggle(stage);
         });
      }
   }
}
