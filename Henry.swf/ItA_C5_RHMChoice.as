package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_C5_RHMChoice extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var bio:MovieClip;
      
      public var bios_ita:MovieClip;
      
      public var dirk:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var yoyo:MovieClip;
      
      public var mapButt;
      
      public function ItA_C5_RHMChoice()
      {
         super();
         addFrameScript(36,this.frame37);
      }
      
      function frame37() : *
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
            ItAMain.instance.SetPath("c",6);
            this.mapButt = this.map;
            this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               ItAMain.instance.ToggleMap(mapButt);
            });
         }
         Helpers.CreateButton(this.dirk,true,false);
         this.dirk.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItADirk");
         });
         Helpers.CreateButton(this.yoyo,true,false);
         this.yoyo.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAYoyo");
         });
      }
   }
}
