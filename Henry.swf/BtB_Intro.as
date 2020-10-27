package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.BtB.BtBMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class BtB_Intro extends MovieClip
   {
       
      
      public var btb_menu:MovieClip;
      
      public var disguisebutton:MovieClip;
      
      public var explosivebutton:MovieClip;
      
      public var laserbutton:MovieClip;
      
      public var shovelbutton:MovieClip;
      
      public var teleporterbutton:MovieClip;
      
      public var wreckbutton:MovieClip;
      
      public function BtB_Intro()
      {
         super();
         addFrameScript(99,this.frame100,266,this.frame267);
      }
      
      function frame100() : *
      {
         if(BiosMain.instance)
         {
            BiosMain.instance.SilentUnlock("btb_henry");
         }
      }
      
      function frame267() : *
      {
         stop();
         Helpers.CreateButton(this.btb_menu,true,false);
         this.btb_menu.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            BtBMain.instance.GotoMainMenu();
         });
         Helpers.CreateButton(this.shovelbutton,true,false);
         this.shovelbutton.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            BtBMain.instance.StartScene("BtBShovel");
         });
         Helpers.CreateButton(this.explosivebutton,true,false);
         this.explosivebutton.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            BtBMain.instance.StartScene("BtBExplosives");
         });
         Helpers.CreateButton(this.teleporterbutton,true,false);
         this.teleporterbutton.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            BtBMain.instance.StartScene("BtBTeleporter");
         });
         Helpers.CreateButton(this.laserbutton,true,false);
         this.laserbutton.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            BtBMain.instance.StartScene("BtBLaser");
         });
         Helpers.CreateButton(this.wreckbutton,true,false);
         this.wreckbutton.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            BtBMain.instance.StartScene("BtBWreckingBall");
         });
         Helpers.CreateButton(this.disguisebutton,true,false);
         this.disguisebutton.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            BtBMain.instance.StartScene("BtBDisguise");
         });
      }
   }
}
