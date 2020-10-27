package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_B4_Brigvault extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var bio:MovieClip;
      
      public var bios_ita:MovieClip;
      
      public var dave:MovieClip;
      
      public var hack:MovieClip;
      
      public var magic:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var paperizor:MovieClip;
      
      public var retroglove:MovieClip;
      
      public var mapButt;
      
      public function ItA_B4_Brigvault()
      {
         super();
         addFrameScript(37,this.frame38,96,this.frame97);
      }
      
      function frame38() : *
      {
         if(ItAMain.instance && ItAMain.instance.goronStage >= ItAMain.BiggoronDaveUnlocked)
         {
            removeChild(this.dave);
         }
      }
      
      function frame97() : *
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
            ItAMain.instance.SetPath("b",5);
            this.mapButt = this.map;
            this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               ItAMain.instance.ToggleMap(mapButt);
            });
         }
         Helpers.CreateButton(this.magic,true,false);
         this.magic.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAMagic");
         });
         Helpers.CreateButton(this.hack,true,false);
         this.hack.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAHack");
         });
         Helpers.CreateButton(this.paperizor,true,false);
         this.paperizor.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAPaperizor");
         });
         Helpers.CreateButton(this.retroglove,true,false);
         this.retroglove.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItARetroGlove");
         });
      }
   }
}
