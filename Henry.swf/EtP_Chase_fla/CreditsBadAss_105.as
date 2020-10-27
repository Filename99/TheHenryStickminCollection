package EtP_Chase_fla
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.EtP.EtPMain;
   import com.innersloth.henry.MainScene;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class CreditsBadAss_105 extends MovieClip
   {
       
      
      public var achievements:MovieClip;
      
      public var bios:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var nextbutton:MovieClip;
      
      public var soundtrack:MovieClip;
      
      public function CreditsBadAss_105()
      {
         super();
         addFrameScript(414,this.frame415,560,this.frame561);
      }
      
      function frame415() : *
      {
         if(MainScene.instance)
         {
            MainScene.instance.SetMenuUnlockedFrame(MainScene.UnlockedStD);
         }
         if(AchMain.instance)
         {
            AchMain.instance.Unlock(stage,"etp_badass");
         }
         stop();
         Helpers.CreateButton(this.soundtrack,true,false);
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
      
      function frame561() : *
      {
         stop();
         EtPMain.instance.GotoNextGame();
      }
   }
}
