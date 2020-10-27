package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class EtP_IntroScene extends MovieClip
   {
       
      
      public var achievements:MovieClip;
      
      public var bios:MovieClip;
      
      public var bios_dave:MovieClip;
      
      public var bios_sideburns:MovieClip;
      
      public var cellphone:MovieClip;
      
      public var drill:MovieClip;
      
      public var etp_menu:MovieClip;
      
      public var file:MovieClip;
      
      public var map:MovieClip;
      
      public var nrg:MovieClip;
      
      public var rocketlauncher:MovieClip;
      
      public var skipButton:MovieClip;
      
      public var teleporter:MovieClip;
      
      public function EtP_IntroScene()
      {
         super();
         addFrameScript(84,this.frame85,93,this.frame94,119,this.frame120,143,this.frame144,176,this.frame177,210,this.frame211,242,this.frame243,265,this.frame266,284,this.frame285,302,this.frame303,346,this.frame347,393,this.frame394,428,this.frame429,440,this.frame441,517,this.frame518,528,this.frame529,548,this.frame549,627,this.frame628,727,this.frame728,767,this.frame768,793,this.frame794,824,this.frame825,837,this.frame838,942,this.frame943,1123,this.frame1124);
      }
      
      function frame85() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("intro_oiyou");
         }
      }
      
      function frame94() : *
      {
         Helpers.CreateButton(this.skipButton,true,false);
         this.skipButton.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            if(EtPMain.instance)
            {
               EtPMain.instance.DriveSub("");
            }
            stop();
            gotoAndPlay("MainMenu");
         });
         if(BiosMain.instance)
         {
            BiosMain.instance.SilentUnlock("etp_henry");
         }
      }
      
      function frame120() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame144() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("intro_freetogo");
         }
      }
      
      function frame177() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame211() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("intro_laughs");
         }
      }
      
      function frame243() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame266() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("intro_notreally");
         }
      }
      
      function frame285() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame303() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("intro_gotpackage");
         }
      }
      
      function frame347() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame394() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("intro_dontgethopesup");
         }
      }
      
      function frame429() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame441() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("intro_youcheckedit");
         }
      }
      
      function frame518() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame529() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("intro_what");
         }
      }
      
      function frame549() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("intro_yeahyeah");
         }
      }
      
      function frame628() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("intro_ifididntcheck");
         }
      }
      
      function frame728() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("intro_heheh");
         }
      }
      
      function frame768() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame794() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("intro_seeyaround");
         }
      }
      
      function frame825() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame838() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("intro_freetgoleaving");
         }
      }
      
      function frame943() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame1124() : *
      {
         if(BiosMain.instance)
         {
            BiosMain.instance.SilentUnlock("etp_henry");
         }
         stop();
         Helpers.CreateButton(this.map,true,false);
         this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            EtPMain.instance.ToggleMap(map);
         });
         Helpers.CreateButton(this.etp_menu,true,false);
         this.etp_menu.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            EtPMain.instance.GotoMainMenu();
         });
         Helpers.CreateButton(this.achievements,true,false);
         this.achievements.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            AchMain.instance.Toggle(stage);
         });
         Helpers.CreateButton(this.bios,true,false);
         this.bios.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            BiosMain.instance.Toggle(stage);
         });
         Helpers.CreateButton(this.file,true,false);
         this.file.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            EtPMain.instance.StartScene("EtPFile");
         });
         Helpers.CreateButton(this.nrg,true,false);
         this.nrg.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            EtPMain.instance.StartScene("EtPNRG");
         });
         Helpers.CreateButton(this.drill,true,false);
         this.drill.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            EtPMain.instance.StartScene("EtPDrill");
         });
         Helpers.CreateButton(this.rocketlauncher,true,false);
         this.rocketlauncher.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            EtPMain.instance.StartScene("EtPRocket");
         });
         Helpers.CreateButton(this.teleporter,true,false);
         this.teleporter.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            EtPMain.instance.StartScene("EtPTeleport");
         });
         Helpers.CreateButton(this.cellphone,true,false);
         this.cellphone.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            EtPMain.instance.StartScene("EtPCellphone");
         });
      }
   }
}
