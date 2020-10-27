package CellphoneScene_fla
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.EtP.EtPMain;
   import com.innersloth.henry.MainScene;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class SneakyCredits_161 extends MovieClip
   {
       
      
      public var achievements:MovieClip;
      
      public var bios:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var nextbutton:MovieClip;
      
      public function SneakyCredits_161()
      {
         super();
         addFrameScript(138,this.frame139,399,this.frame400,548,this.frame549);
      }
      
      function frame139() : *
      {
         if(AchMain.instance)
         {
            AchMain.instance.Unlock(stage,"etp_legal");
         }
      }
      
      function frame400() : *
      {
         if(MainScene.instance)
         {
            MainScene.instance.SetMenuUnlockedFrame(MainScene.UnlockedStD);
         }
         stop();
         Helpers.CreateButton(this.map,true,false);
         this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            EtPMain.instance.ToggleMap(map);
         });
         Helpers.CreateButton(this.nextbutton,true,false);
         this.nextbutton.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            stop();
            gotoAndPlay("transition");
         });
         Helpers.CreateButton(this.menu,true,false);
         this.menu.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            stop();
            EtPMain.instance.GotoMainMenu();
         });
         Helpers.CreateButton(this.bios,true,false);
         this.bios.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            BiosMain.instance.Toggle(stage);
         });
      }
      
      function frame549() : *
      {
         stop();
         EtPMain.instance.GotoNextGame();
      }
   }
}
