package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_A3_engineroom extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var bg:MovieClip;
      
      public var bio:MovieClip;
      
      public var charles:MovieClip;
      
      public var gravbubble:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var platform:MovieClip;
      
      public var robohelper:MovieClip;
      
      public var mapButt;
      
      public function ItA_A3_engineroom()
      {
         super();
         addFrameScript(0,this.frame1,39,this.frame40,87,this.frame88,99,this.frame100,121,this.frame122,126,this.frame127,165,this.frame166,168,this.frame169,225,this.frame226,268,this.frame269);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame40() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a3_engineroom_ohheyuh");
         }
      }
      
      function frame88() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame100() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a3_engineroom_whereitsay");
         }
      }
      
      function frame122() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame127() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a3_engineroom_thatdproba");
         }
      }
      
      function frame166() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame169() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a3_engineroom_letmejust");
         }
      }
      
      function frame226() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
         this.bg.chains.stop();
         this.bg.pipe1.stop();
         this.bg.pipe2.stop();
         this.bg.pipe3.stop();
         this.bg.gear.stop();
         this.bg.gears.stop();
      }
      
      function frame269() : *
      {
         stop();
         this.bg.chains.stop();
         this.bg.pipe1.stop();
         this.bg.pipe2.stop();
         this.bg.pipe3.stop();
         this.bg.gear.stop();
         this.bg.gears.stop();
         Helpers.CreateButton(this.map,true,false);
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
         if(ItAMain.instance)
         {
            ItAMain.instance.SetPath("a",4);
            this.mapButt = this.map;
            this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               ItAMain.instance.ToggleMap(mapButt);
            });
         }
         Helpers.CreateButton(this.platform,true,false);
         this.platform.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAPlatform");
         });
         Helpers.CreateButton(this.gravbubble,true,false);
         this.gravbubble.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAGravBubble");
         });
         Helpers.CreateButton(this.robohelper,true,false);
         this.robohelper.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItARoboHelper");
         });
         Helpers.CreateButton(this.charles,true,false);
         this.charles.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItACharles");
         });
      }
   }
}
