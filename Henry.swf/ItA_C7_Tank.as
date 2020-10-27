package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import com.innersloth.henry.MainScene;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_C7_Tank extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var bio:MovieClip;
      
      public var bios:MovieClip;
      
      public var bios_ita:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var nextbutton:MovieClip;
      
      public var soundtrack:MovieClip;
      
      public var mapButt;
      
      public function ItA_C7_Tank()
      {
         super();
         addFrameScript(725,this.frame726,989,this.frame990,1101,this.frame1102,1253,this.frame1254);
      }
      
      function frame726() : *
      {
         if(AchMain.instance)
         {
            AchMain.instance.Unlock(stage,"ita_rbh");
         }
      }
      
      function frame990() : *
      {
         if(MainScene.instance)
         {
            MainScene.instance.UnlockItA("rbh");
         }
         if(ItAMain.instance)
         {
            ItAMain.instance.SetPath("c",9);
         }
      }
      
      function frame1102() : *
      {
         if(MainScene.instance)
         {
            MainScene.instance.SetMenuUnlockedFrame(MainScene.UnlockedFtC);
         }
         Helpers.CreateButton(this.soundtrack,true,false);
         stop();
         if(ItAMain.instance)
         {
            this.mapButt = this.map;
            Helpers.CreateButton(this.map,true,false);
            this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               ItAMain.instance.ToggleMap(mapButt);
            });
         }
         Helpers.CreateButton(this.menu,true,false);
         this.menu.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            stop();
            ItAMain.instance.GotoMainMenu();
         });
         Helpers.CreateButton(this.nextbutton,true,false);
         this.nextbutton.addEventListener(MouseEvent.MOUSE_UP,function(param1:MouseEvent):void
         {
            stop();
            gotoAndPlay("transition");
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
      
      function frame1254() : *
      {
         stop();
         ItAMain.instance.GotoNextGame();
      }
   }
}
