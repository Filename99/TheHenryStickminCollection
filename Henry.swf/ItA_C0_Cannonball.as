package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_C0_Cannonball extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var bio:MovieClip;
      
      public var bios_ita:MovieClip;
      
      public var chair:MovieClip;
      
      public var laser:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var thruster:MovieClip;
      
      public var mapButt;
      
      public function ItA_C0_Cannonball()
      {
         super();
         addFrameScript(0,this.frame1,13,this.frame14,77,this.frame78,90,this.frame91,142,this.frame143,247,this.frame248,278,this.frame279,308,this.frame309,337,this.frame338,365,this.frame366);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame14() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c0_cannonball_heyivebee");
         }
      }
      
      function frame78() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame91() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c0_cannonball_ahyeslet");
         }
      }
      
      function frame143() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame248() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c0_cannonball_gogoill");
         }
      }
      
      function frame279() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame309() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c0_cannonball_comeonthen");
         }
      }
      
      function frame338() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame366() : *
      {
         stop();
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
            ItAMain.instance.SetPath("c",2);
            this.mapButt = this.map;
            this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               ItAMain.instance.ToggleMap(mapButt);
            });
         }
         Helpers.CreateButton(this.laser,true,false);
         this.laser.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItALaser");
         });
         Helpers.CreateButton(this.chair,true,false);
         this.chair.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAChair");
         });
         Helpers.CreateButton(this.thruster,true,false);
         this.thruster.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAThruster");
         });
      }
   }
}
