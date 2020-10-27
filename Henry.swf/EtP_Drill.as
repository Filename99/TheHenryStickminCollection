package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class EtP_Drill extends MovieClip
   {
       
      
      public var achievements:MovieClip;
      
      public var bios:MovieClip;
      
      public var crowbar:MovieClip;
      
      public var etp_menu:MovieClip;
      
      public var map:MovieClip;
      
      public var opacitator:MovieClip;
      
      public function EtP_Drill()
      {
         super();
         addFrameScript(292,this.frame293);
      }
      
      function frame293() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.SetPath("c",2);
         }
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
         Helpers.CreateButton(this.bios,true,false);
         this.bios.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            BiosMain.instance.Toggle(stage);
         });
         Helpers.CreateButton(this.opacitator,true,false);
         this.opacitator.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            EtPMain.instance.StartScene("EtPOpacitator");
         });
         Helpers.CreateButton(this.crowbar,true,false);
         this.crowbar.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            EtPMain.instance.StartScene("EtPCrowbar");
         });
      }
   }
}
