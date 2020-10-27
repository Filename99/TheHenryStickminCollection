package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import com.innersloth.henry.MainScene;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_B7_Prototype extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var bio:MovieClip;
      
      public var bios:MovieClip;
      
      public var bios_ita:MovieClip;
      
      public var heli:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var nextbutton:MovieClip;
      
      public var soundtrack:MovieClip;
      
      public var mapButt;
      
      public function ItA_B7_Prototype()
      {
         super();
         addFrameScript(0,this.frame1,376,this.frame377,430,this.frame431,437,this.frame438,525,this.frame526,909,this.frame910,935,this.frame936,1009,this.frame1010,1046,this.frame1047,1065,this.frame1066,1067,this.frame1068,1077,this.frame1078,1078,this.frame1079,1079,this.frame1080,1090,this.frame1091,1121,this.frame1122,1130,this.frame1131,1172,this.frame1173,1353,this.frame1354,1660,this.frame1661,1695,this.frame1696,1845,this.frame1846);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame377() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b7_prototype_thereheis");
         }
      }
      
      function frame431() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame438() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b7_prototype_noforgetab");
         }
      }
      
      function frame526() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame910() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b7_prototype_orderscapta");
         }
      }
      
      function frame936() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame1010() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame1047() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b7_prototype_lethimgo");
         }
      }
      
      function frame1066() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame1068() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b7_prototype_what");
         }
      }
      
      function frame1078() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame1079() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame1080() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame1091() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b7_prototype_wegotwhat");
         }
      }
      
      function frame1122() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame1131() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b7_prototype_hesnotwor");
         }
      }
      
      function frame1173() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame1354() : *
      {
         if(AchMain.instance)
         {
            AchMain.instance.Unlock(stage,"ita_pbt");
         }
      }
      
      function frame1661() : *
      {
         if(MainScene.instance)
         {
            MainScene.instance.UnlockItA("pbt");
         }
         if(ItAMain.instance)
         {
            ItAMain.instance.SetPath("b",9);
         }
      }
      
      function frame1696() : *
      {
         if(MainScene.instance)
         {
            MainScene.instance.SetMenuUnlockedFrame(MainScene.UnlockedFtC);
         }
         Helpers.CreateButton(this.soundtrack,true,false);
         stop();
         Helpers.CreateButton(this.nextbutton,true,false);
         this.nextbutton.addEventListener(MouseEvent.MOUSE_UP,function(param1:MouseEvent):void
         {
            stop();
            gotoAndPlay("transition");
         });
         Helpers.CreateButton(this.map,true,false);
         this.mapButt = this.map;
         this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.ToggleMap(mapButt);
         });
         Helpers.CreateButton(this.menu,true,false);
         this.menu.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            stop();
            ItAMain.instance.GotoMainMenu();
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
      
      function frame1846() : *
      {
         stop();
         ItAMain.instance.GotoNextGame();
      }
   }
}
