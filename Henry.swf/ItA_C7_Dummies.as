package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import com.innersloth.henry.MainScene;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_C7_Dummies extends MovieClip
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
      
      public function ItA_C7_Dummies()
      {
         super();
         addFrameScript(34,this.frame35,197,this.frame198,250,this.frame251,259,this.frame260,302,this.frame303,362,this.frame363,382,this.frame383,466,this.frame467,500,this.frame501,628,this.frame629,925,this.frame926,965,this.frame966,1115,this.frame1116);
      }
      
      function frame35() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame198() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c7_dummies_youthinkth");
         }
      }
      
      function frame251() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame260() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c7_dummies_imsurehen");
         }
      }
      
      function frame303() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame363() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c7_dummies_whatis");
         }
      }
      
      function frame383() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame467() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c7_dummies_henryyyy");
         }
      }
      
      function frame501() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame629() : *
      {
         if(AchMain.instance)
         {
            AchMain.instance.Unlock(stage,"ita_rpe");
         }
      }
      
      function frame926() : *
      {
         if(MainScene.instance)
         {
            MainScene.instance.UnlockItA("rpe");
         }
         if(ItAMain.instance)
         {
            ItAMain.instance.SetPath("c",10);
         }
      }
      
      function frame966() : *
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
      
      function frame1116() : *
      {
         stop();
         ItAMain.instance.GotoNextGame();
      }
   }
}
