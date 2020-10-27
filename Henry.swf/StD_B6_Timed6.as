package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.MainScene;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class StD_B6_Timed6 extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var bios:MovieClip;
      
      public var bios_std:MovieClip;
      
      public var bribe:MovieClip;
      
      public var diamondkick:MovieClip;
      
      public var drive:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var nextbutton:MovieClip;
      
      public var soundtrack:MovieClip;
      
      public function StD_B6_Timed6()
      {
         super();
         addFrameScript(0,this.frame1,16,this.frame17,28,this.frame29,31,this.frame32,37,this.frame38,73,this.frame74,87,this.frame88,164,this.frame165,190,this.frame191,234,this.frame235,252,this.frame253,253,this.frame254,254,this.frame255,295,this.frame296,299,this.frame300,300,this.frame301,374,this.frame375,378,this.frame379,379,this.frame380,404,this.frame405,423,this.frame424,427,this.frame428,479,this.frame480,480,this.frame481,521,this.frame522,525,this.frame526,526,this.frame527,554,this.frame555,753,this.frame754,870,this.frame871,980,this.frame981,1197,this.frame1198,1347,this.frame1348);
      }
      
      public function drivebuttonClicked(param1:MouseEvent) : void
      {
         this.drive.removeEventListener(MouseEvent.CLICK,this.drivebuttonClicked);
         this.bribe.removeEventListener(MouseEvent.CLICK,this.bribebuttonClicked);
         this.diamondkick.removeEventListener(MouseEvent.CLICK,this.diamondkickbuttonClicked);
         gotoAndPlay("drive");
      }
      
      public function bribebuttonClicked(param1:MouseEvent) : void
      {
         this.drive.removeEventListener(MouseEvent.CLICK,this.drivebuttonClicked);
         this.bribe.removeEventListener(MouseEvent.CLICK,this.bribebuttonClicked);
         this.diamondkick.removeEventListener(MouseEvent.CLICK,this.diamondkickbuttonClicked);
         gotoAndPlay("bribe");
      }
      
      public function diamondkickbuttonClicked(param1:MouseEvent) : void
      {
         this.drive.removeEventListener(MouseEvent.CLICK,this.drivebuttonClicked);
         this.bribe.removeEventListener(MouseEvent.CLICK,this.bribebuttonClicked);
         this.diamondkick.removeEventListener(MouseEvent.CLICK,this.diamondkickbuttonClicked);
         gotoAndPlay("diamond");
      }
      
      function frame1() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame17() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b6_timed6final_sir");
         }
      }
      
      function frame29() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame32() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b6_timed6final_placehand");
         }
      }
      
      function frame38() : *
      {
         this.drive.addEventListener(MouseEvent.CLICK,this.drivebuttonClicked);
         this.bribe.addEventListener(MouseEvent.CLICK,this.bribebuttonClicked);
         this.diamondkick.addEventListener(MouseEvent.CLICK,this.diamondkickbuttonClicked);
         if(StDMain.instance)
         {
            StDMain.instance.SetPath("b",7);
         }
         Helpers.CreateButton(this.drive,true,false);
         Helpers.CreateButton(this.bribe,true,false);
         Helpers.CreateButton(this.diamondkick,true,false);
      }
      
      function frame74() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame88() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b6_timed6final_donotcomly");
         }
      }
      
      function frame165() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame191() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b6_timed6final_nochouice");
         }
      }
      
      function frame235() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame253() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame254() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame255() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame296() : *
      {
         StDMain.instance.ShowFail("std_timed6miss","StDTimed6");
      }
      
      function frame300() : *
      {
         stop();
      }
      
      function frame301() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame375() : *
      {
         StDMain.instance.ShowFail("std_timed6drive","StDTimed6");
      }
      
      function frame379() : *
      {
         stop();
      }
      
      function frame380() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame405() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame424() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame428() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("std_b6_timed6final_bribery");
         }
      }
      
      function frame480() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame481() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame522() : *
      {
         StDMain.instance.ShowFail("std_timed6bribe","StDTimed6");
      }
      
      function frame526() : *
      {
         stop();
      }
      
      function frame527() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame555() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame754() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame871() : *
      {
         if(StDMain.instance)
         {
            StDMain.instance.DriveSub("");
         }
      }
      
      function frame981() : *
      {
         if(AchMain.instance)
         {
            AchMain.instance.Unlock(stage,"std_aggressive");
         }
         if(StDMain.instance)
         {
            StDMain.instance.SetPath("b",8);
         }
      }
      
      function frame1198() : *
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
      
      function frame1348() : *
      {
         stop();
         StDMain.instance.GotoNextGame();
      }
   }
}
