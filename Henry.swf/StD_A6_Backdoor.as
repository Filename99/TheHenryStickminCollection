package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class StD_A6_Backdoor extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var bios:MovieClip;
      
      public var bios_std:MovieClip;
      
      public var diamond:MovieClip;
      
      public var jump:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var neck:MovieClip;
      
      public var rifle:MovieClip;
      
      public function StD_A6_Backdoor()
      {
         super();
         addFrameScript(122,this.frame123);
      }
      
      function frame123() : *
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
            StDMain.instance.SetPath("a",7);
         }
         Helpers.CreateButton(this.neck,true,false);
         this.neck.addEventListener(MouseEvent.CLICK,function neckClicked(param1:MouseEvent):void
         {
            param1.currentTarget.removeEventListener(param1.type,neckClicked);
            StDMain.instance.StartScene("StDNeck");
         });
         Helpers.CreateButton(this.diamond,true,false);
         this.diamond.addEventListener(MouseEvent.CLICK,function diamondClicked(param1:MouseEvent):void
         {
            param1.currentTarget.removeEventListener(param1.type,diamondClicked);
            StDMain.instance.StartScene("StDDiamondDrop");
         });
         Helpers.CreateButton(this.rifle,true,false);
         this.rifle.addEventListener(MouseEvent.CLICK,function rifleClicked(param1:MouseEvent):void
         {
            param1.currentTarget.removeEventListener(param1.type,rifleClicked);
            StDMain.instance.StartScene("StDRifle");
         });
         Helpers.CreateButton(this.jump,true,false);
         this.jump.addEventListener(MouseEvent.CLICK,function jumpClicked(param1:MouseEvent):void
         {
            param1.currentTarget.removeEventListener(param1.type,jumpClicked);
            StDMain.instance.StartScene("StDJump");
         });
         Helpers.CreateButton(this.menu,true,false);
         Helpers.CreateButton(this.ach,true,false);
         Helpers.CreateButton(this.bios,true,false);
      }
   }
}
