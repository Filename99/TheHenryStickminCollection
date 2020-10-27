package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_B2_Surveillance extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var bg:MovieClip;
      
      public var bio:MovieClip;
      
      public var computer:MovieClip;
      
      public var elevator:MovieClip;
      
      public var keyy:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var vent:MovieClip;
      
      public var mapButt;
      
      public function ItA_B2_Surveillance()
      {
         super();
         addFrameScript(0,this.frame1,92,this.frame93);
      }
      
      function frame1() : *
      {
         this.keyy.gotoAndStop(1);
      }
      
      function frame93() : *
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
         this.bg.aa.stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.SetPath("b",3);
            this.mapButt = this.map;
            this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               ItAMain.instance.ToggleMap(mapButt);
            });
         }
         Helpers.CreateButton(this.computer,true,false);
         this.computer.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAComputer");
         });
         Helpers.CreateButton(this.elevator,true,false);
         this.elevator.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAElevator");
         });
         Helpers.CreateButton(this.vent,true,false);
         this.vent.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAVent");
         });
      }
   }
}
