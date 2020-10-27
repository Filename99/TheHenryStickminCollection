package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class EtP_FileCell extends MovieClip
   {
       
      
      public var achievements:MovieClip;
      
      public var bios:MovieClip;
      
      public var bios_dave:MovieClip;
      
      public var bios_sideburns:MovieClip;
      
      public var chair:MovieClip;
      
      public var etp_menu:MovieClip;
      
      public var grenades:MovieClip;
      
      public var map:MovieClip;
      
      public var timed1:MovieClip;
      
      public var timed2:MovieClip;
      
      public function EtP_FileCell()
      {
         super();
         addFrameScript(0,this.frame1,259,this.frame260,362,this.frame363,366,this.frame367,450,this.frame451,550,this.frame551,553,this.frame554,746,this.frame747,773,this.frame774,808,this.frame809,910,this.frame911);
      }
      
      function frame1() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame260() : *
      {
         EtPMain.instance.SetPath("a",2);
         this.timed1.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("guard1attack");
         });
      }
      
      function frame363() : *
      {
         EtPMain.instance.ShowFail("etp_timed1","FileRetry");
      }
      
      function frame367() : *
      {
         stop();
      }
      
      function frame451() : *
      {
         this.timed2.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("guard2attack");
         });
      }
      
      function frame551() : *
      {
         EtPMain.instance.ShowFail("etp_timed2","FileRetry");
      }
      
      function frame554() : *
      {
         stop();
      }
      
      function frame747() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("filecell_awwtight");
         }
      }
      
      function frame774() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("filecell_awwtight");
         }
      }
      
      function frame809() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame911() : *
      {
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
         EtPMain.instance.SetPath("a",3);
         Helpers.CreateButton(this.grenades,true,false);
         this.grenades.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            EtPMain.instance.StartScene("EtPGrenades");
         });
         Helpers.CreateButton(this.chair,true,false);
         this.chair.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            EtPMain.instance.StartScene("EtPChair");
         });
      }
   }
}
