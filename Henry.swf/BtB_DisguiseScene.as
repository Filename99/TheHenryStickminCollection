package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.BtB.BtBMain;
   import com.innersloth.henry.MainScene;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class BtB_DisguiseScene extends MovieClip
   {
       
      
      public var bios_guard1:MovieClip;
      
      public var btb_ach:MovieClip;
      
      public var btb_bios:MovieClip;
      
      public var btb_menu:MovieClip;
      
      public var btb_nextgame:MovieClip;
      
      public var btb_retry:MovieClip;
      
      public function BtB_DisguiseScene()
      {
         super();
         addFrameScript(211,this.frame212,269,this.frame270,302,this.frame303,310,this.frame311,336,this.frame337,413,this.frame414,427,this.frame428,432,this.frame433,494,this.frame495,505,this.frame506,525,this.frame526,535,this.frame536,586,this.frame587,593,this.frame594,639,this.frame640,897,this.frame898,919,this.frame920,933,this.frame934,941,this.frame942,955,this.frame956,1090,this.frame1091,1227,this.frame1228);
      }
      
      function frame212() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("howloseone");
         }
      }
      
      function frame270() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("throwinback");
         }
      }
      
      function frame303() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("");
         }
      }
      
      function frame311() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("justbesafe");
         }
      }
      
      function frame337() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("");
         }
      }
      
      function frame414() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("youever");
         }
      }
      
      function frame428() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("");
         }
      }
      
      function frame433() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("wonderwhy");
         }
      }
      
      function frame495() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("");
         }
      }
      
      function frame506() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("well");
         }
      }
      
      function frame526() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("");
         }
      }
      
      function frame536() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("moreofavault");
         }
      }
      
      function frame587() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("");
         }
      }
      
      function frame594() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("thatmakessense");
         }
      }
      
      function frame640() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("");
         }
      }
      
      function frame898() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("alarm");
         }
      }
      
      function frame920() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("freeze");
         }
      }
      
      function frame934() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("");
         }
      }
      
      function frame942() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("dontmove");
         }
      }
      
      function frame956() : *
      {
         if(BtBMain.instance)
         {
            BtBMain.instance.DriveSub("");
         }
      }
      
      function frame1091() : *
      {
         stop();
         if(MainScene.instance)
         {
            MainScene.instance.SetMenuUnlockedFrame(MainScene.UnlockedEtP);
         }
         if(AchMain.instance)
         {
            AchMain.instance.Unlock(stage,"btb_win");
         }
         Helpers.CreateButton(this.btb_nextgame,true,false);
         this.btb_nextgame.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("prisontrans");
         });
         Helpers.CreateButton(this.btb_menu,true,false);
         this.btb_menu.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            BtBMain.instance.GotoMainMenu();
         });
         Helpers.CreateButton(this.btb_retry,true,false);
         this.btb_retry.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            BtBMain.instance.StartScene("btb_main");
         });
      }
      
      function frame1228() : *
      {
         stop();
         BtBMain.instance.GotoNextGame();
      }
   }
}
