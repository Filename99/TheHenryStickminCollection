package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_B3_EngineGem extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var bg:MovieClip;
      
      public var bio:MovieClip;
      
      public var leap:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var pencil:MovieClip;
      
      public var stretch:MovieClip;
      
      public var teleporter:MovieClip;
      
      public var mapButt;
      
      public function ItA_B3_EngineGem()
      {
         super();
         addFrameScript(136,this.frame137,164,this.frame165);
      }
      
      function frame137() : *
      {
         this.bg.chains.stop();
         this.bg.pipe1.stop();
         this.bg.pipe2.stop();
         this.bg.pipe3.stop();
         this.bg.gear.stop();
         this.bg.gears.stop();
      }
      
      function frame165() : *
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
            ItAMain.instance.SetPath("b",4);
            this.mapButt = this.map;
            this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               ItAMain.instance.ToggleMap(mapButt);
            });
         }
         Helpers.CreateButton(this.leap,true,false);
         this.leap.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItALeap");
         });
         Helpers.CreateButton(this.teleporter,true,false);
         this.teleporter.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItATeleporter");
         });
         Helpers.CreateButton(this.stretch,true,false);
         this.stretch.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAStretch");
         });
         Helpers.CreateButton(this.pencil,true,false);
         this.pencil.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAPencil");
         });
      }
   }
}
