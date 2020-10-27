package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.media.SoundMixer;
   
   public dynamic class ItA_Intro extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var bio:MovieClip;
      
      public var bios_ita:MovieClip;
      
      public var cannonball:MovieClip;
      
      public var earpiece:MovieClip;
      
      public var grapplegun:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var skipButton:MovieClip;
      
      public var skipbutton:SimpleButton;
      
      public var stickyhand:MovieClip;
      
      public var self;
      
      public var mapButt;
      
      public function ItA_Intro()
      {
         super();
         addFrameScript(0,this.frame1,98,this.frame99,101,this.frame102,181,this.frame182,192,this.frame193,290,this.frame291,299,this.frame300,346,this.frame347,355,this.frame356,426,this.frame427,432,this.frame433,499,this.frame500,510,this.frame511,566,this.frame567,572,this.frame573,661,this.frame662,665,this.frame666,698,this.frame699,710,this.frame711,754,this.frame755,779,this.frame780,826,this.frame827,831,this.frame832,882,this.frame883,893,this.frame894,975,this.frame976,991,this.frame992,1046,this.frame1047,1051,this.frame1052,1099,this.frame1100,1103,this.frame1104,1180,this.frame1181,1219,this.frame1220,1269,this.frame1270,1353,this.frame1354);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
         if(BiosMain.instance)
         {
            BiosMain.instance.SilentUnlock("ita_henry");
         }
      }
      
      function frame99() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("0_intro_wellwell");
         }
      }
      
      function frame102() : *
      {
         Helpers.CreateButton(this.skipButton,true,false);
         this.self = this;
         this.skipButton.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            if(ItAMain.instance)
            {
               ItAMain.instance.DriveSub("");
            }
            SoundMixer.stopAll();
            self.gotoAndPlay("mainchoice");
         });
      }
      
      function frame182() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame193() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("0_intro_youvebeen");
         }
      }
      
      function frame291() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame300() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("0_intro_youllbepe");
         }
      }
      
      function frame347() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame356() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("0_intro_wevebeenh");
         }
      }
      
      function frame427() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame433() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("0_intro_weknowthey");
         }
      }
      
      function frame500() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame511() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("0_intro_youllbego");
         }
      }
      
      function frame567() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame573() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("0_intro_idontneed");
         }
      }
      
      function frame662() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame666() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("0_intro_attemptedro");
         }
      }
      
      function frame699() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame711() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("0_intro_breaking");
         }
      }
      
      function frame755() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame780() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("0_intro_andeven");
         }
      }
      
      function frame827() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame832() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("0_intro_wevegotqu");
         }
      }
      
      function frame883() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame894() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("0_intro_dothisjob");
         }
      }
      
      function frame976() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame992() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("0_intro_charliehere");
         }
      }
      
      function frame1047() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame1052() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("0_intro_therestis");
         }
      }
      
      function frame1100() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame1104() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("0_intro_findawayt");
         }
      }
      
      function frame1181() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame1220() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("0_intro_heyuhhow");
         }
      }
      
      function frame1270() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame1354() : *
      {
         stop();
         Helpers.CreateButton(this.map,true,false);
         this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.ToggleMap(mapButt);
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
         this.mapButt = this.map;
         Helpers.CreateButton(this.earpiece,true,false);
         this.earpiece.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAEarpiece");
         });
         Helpers.CreateButton(this.cannonball,true,false);
         this.cannonball.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItACannonball");
         });
         Helpers.CreateButton(this.stickyhand,true,false);
         this.stickyhand.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAStickyHand");
         });
         Helpers.CreateButton(this.grapplegun,true,false);
         this.grapplegun.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAGrapple");
         });
      }
   }
}
