package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_B7_CCC extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var bio:MovieClip;
      
      public var deb:MovieClip;
      
      public var flash:MovieClip;
      
      public var lcut:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var prototype:MovieClip;
      
      public var secretback:SimpleButton;
      
      public var unknown:MovieClip;
      
      public var mapButt;
      
      public function ItA_B7_CCC()
      {
         super();
         addFrameScript(14,this.frame15,21,this.frame22);
      }
      
      function frame15() : *
      {
         stop();
         ItAMain.instance.SetPath("b",8);
         Helpers.CreateButton(this.map,true,false);
         this.mapButt = this.map;
         this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.ToggleMap(mapButt);
         });
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
         Helpers.CreateButton(this.lcut,true,false);
         this.lcut.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItALCutter");
         });
         Helpers.CreateButton(this.deb,true,false);
         this.deb.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItADeb");
         });
         Helpers.CreateButton(this.unknown,true,false);
         this.unknown.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAUnknown");
         });
         Helpers.CreateButton(this.prototype,true,false);
         this.prototype.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAPrototype");
         });
      }
      
      function frame22() : *
      {
         stop();
         ItAMain.instance.SetBiggoronStage(ItAMain.BiggoronCodeGot);
         this.secretback.addEventListener(MouseEvent.CLICK,function back(param1:*):*
         {
            secretback.removeEventListener(MouseEvent.CLICK,back);
            gotoAndStop("bfinal");
         });
      }
   }
}
