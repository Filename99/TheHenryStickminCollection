package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.MainScene;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class StD_A6_DiamondDrop extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var bios:MovieClip;
      
      public var bios_std:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var nextbutton:MovieClip;
      
      public var soundtrack:MovieClip;
      
      public function StD_A6_DiamondDrop()
      {
         super();
         addFrameScript(354,this.frame355,577,this.frame578,642,this.frame643,800,this.frame801);
      }
      
      function frame355() : *
      {
         if(AchMain.instance)
         {
            AchMain.instance.Unlock(stage,"std_undetected");
         }
      }
      
      function frame578() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.SetPath("a",8);
         }
      }
      
      function frame643() : *
      {
         stop();
         Helpers.CreateButton(this.soundtrack,true,false);
         if(MainScene.instance)
         {
            MainScene.instance.SetMenuUnlockedFrame(MainScene.UnlockedItA);
         }
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
            StDMain.instance.GotoMainMenu();
         });
         Helpers.CreateButton(this.map,true,false);
         this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            StDMain.instance.ToggleMap(map);
         });
         Helpers.CreateButton(this.ach,true,false);
         this.ach.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            AchMain.instance.Toggle(stage);
         });
         Helpers.CreateButton(this.bios,true,false);
         this.bios.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            BiosMain.instance.Toggle(stage);
         });
      }
      
      function frame801() : *
      {
         stop();
         StDMain.instance.GotoNextGame();
      }
   }
}
