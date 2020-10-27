package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_B6_Wing extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var armor:MovieClip;
      
      public var bg:MovieClip;
      
      public var bio:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var propane:MovieClip;
      
      public var shell:MovieClip;
      
      public var umbrella:MovieClip;
      
      public var mapButt;
      
      public function ItA_B6_Wing()
      {
         super();
         addFrameScript(36,this.frame37,68,this.frame69);
      }
      
      function frame37() : *
      {
         this.bg.stop();
      }
      
      function frame69() : *
      {
         stop();
         this.bg.stop();
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
            ItAMain.instance.SetPath("b",7);
            this.mapButt = this.map;
            this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               ItAMain.instance.ToggleMap(mapButt);
            });
         }
         Helpers.CreateButton(this.shell,true,false);
         this.shell.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAShell");
         });
         Helpers.CreateButton(this.armor,true,false);
         this.armor.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAArmor");
         });
         Helpers.CreateButton(this.propane,true,false);
         this.propane.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAPropane");
         });
         Helpers.CreateButton(this.umbrella,true,false);
         this.umbrella.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAUmbrella");
         });
      }
   }
}
