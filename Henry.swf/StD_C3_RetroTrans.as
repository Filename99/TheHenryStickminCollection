package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class StD_C3_RetroTrans extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var alien:MovieClip;
      
      public var bios:MovieClip;
      
      public var crowbar:MovieClip;
      
      public var goodball:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var mushroom:MovieClip;
      
      public function StD_C3_RetroTrans()
      {
         super();
         addFrameScript(86,this.frame87);
      }
      
      function frame87() : *
      {
         stop();
         Helpers.CreateButton(this.map,true,false);
         this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            StDMain.instance.ToggleMap(map);
         });
         Helpers.CreateButton(this.menu,true,false);
         this.menu.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            StDMain.instance.GotoMainMenu();
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
         if(StDMain.instance)
         {
            StDMain.instance.SetPath("c",4);
         }
         Helpers.CreateButton(this.alien,true,false);
         this.alien.addEventListener(MouseEvent.CLICK,function alienClicked(param1:MouseEvent):void
         {
            param1.currentTarget.removeEventListener(param1.type,alienClicked);
            StDMain.instance.StartScene("StDAlien");
         });
         Helpers.CreateButton(this.crowbar,true,false);
         this.crowbar.addEventListener(MouseEvent.CLICK,function crowbarClicked(param1:MouseEvent):void
         {
            param1.currentTarget.removeEventListener(param1.type,crowbarClicked);
            StDMain.instance.StartScene("StDCrowbar");
         });
         Helpers.CreateButton(this.goodball,true,false);
         this.goodball.addEventListener(MouseEvent.CLICK,function goodballClicked(param1:MouseEvent):void
         {
            param1.currentTarget.removeEventListener(param1.type,goodballClicked);
            StDMain.instance.StartScene("StDGoodball");
         });
         Helpers.CreateButton(this.mushroom,true,false);
         this.mushroom.addEventListener(MouseEvent.CLICK,function mushroomClicked(param1:MouseEvent):void
         {
            param1.currentTarget.removeEventListener(param1.type,mushroomClicked);
            StDMain.instance.StartScene("StDMushroom");
         });
      }
   }
}
