package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_A0_Earpiece extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var acid:MovieClip;
      
      public var bio:MovieClip;
      
      public var c4:MovieClip;
      
      public var knock:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var vacuum:MovieClip;
      
      public var mapButt;
      
      public function ItA_A0_Earpiece()
      {
         super();
         addFrameScript(0,this.frame1,48,this.frame49,83,this.frame84,89,this.frame90,127,this.frame128,133,this.frame134,217,this.frame218,230,this.frame231,255,this.frame256,292,this.frame293);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame49() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a0_earpiece_checkcheck");
         }
      }
      
      function frame84() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame90() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a0_earpiece_justthought");
         }
      }
      
      function frame128() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame134() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a0_earpiece_uhhtheres");
         }
      }
      
      function frame218() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame231() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a0_earpiece_goodluck");
         }
      }
      
      function frame256() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame293() : *
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
            ItAMain.instance.SetPath("a",2);
            this.mapButt = this.map;
            this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               ItAMain.instance.ToggleMap(mapButt);
            });
         }
         Helpers.CreateButton(this.c4,true,false);
         this.c4.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAC4");
         });
         Helpers.CreateButton(this.knock,true,false);
         this.knock.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAKnock");
         });
         Helpers.CreateButton(this.acid,true,false);
         this.acid.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAAcid");
         });
         Helpers.CreateButton(this.vacuum,true,false);
         this.vacuum.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAVacuum");
         });
      }
   }
}
