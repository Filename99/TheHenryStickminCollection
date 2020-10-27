package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_A7_cargobay extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var banana:MovieClip;
      
      public var bio:MovieClip;
      
      public var flashbang:MovieClip;
      
      public var forcegun:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var sleepinggas:MovieClip;
      
      public var mapButt;
      
      public function ItA_A7_cargobay()
      {
         super();
         addFrameScript(23,this.frame24);
      }
      
      function frame24() : *
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
            ItAMain.instance.SetPath("a",8);
            this.mapButt = this.map;
            this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               ItAMain.instance.ToggleMap(mapButt);
            });
         }
         Helpers.CreateButton(this.flashbang,true,false);
         this.flashbang.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAFlashBang");
         });
         Helpers.CreateButton(this.sleepinggas,true,false);
         this.sleepinggas.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItASleepingGas");
         });
         Helpers.CreateButton(this.banana,true,false);
         this.banana.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItABanana");
         });
         Helpers.CreateButton(this.forcegun,true,false);
         this.forcegun.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAForceGun");
         });
      }
   }
}
