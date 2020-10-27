package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class EtP_File extends MovieClip
   {
       
      
      public var achievements:MovieClip;
      
      public var bios:MovieClip;
      
      public var etp_menu:MovieClip;
      
      public var filecell:MovieClip;
      
      public var filewindow:MovieClip;
      
      public var map:MovieClip;
      
      public function EtP_File()
      {
         super();
         addFrameScript(74,this.frame75);
      }
      
      function frame75() : *
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
         Helpers.CreateButton(this.filecell,true,false);
         this.filecell.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            EtPMain.instance.StartScene("EtPFileCell");
         });
         Helpers.CreateButton(this.filewindow,true,false);
         this.filewindow.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            EtPMain.instance.StartScene("EtPFileWindow");
         });
      }
   }
}
