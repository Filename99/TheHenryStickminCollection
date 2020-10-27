package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class StD_A2_Rooftop extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var bios:MovieClip;
      
      public var fpunch:MovieClip;
      
      public var invis:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var penny:MovieClip;
      
      public var tranq:MovieClip;
      
      public function StD_A2_Rooftop()
      {
         super();
         addFrameScript(96,this.frame97);
      }
      
      function frame97() : *
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
            StDMain.instance.SetPath("a",3);
         }
         Helpers.CreateButton(this.penny,true,false);
         this.penny.addEventListener(MouseEvent.CLICK,function pennyClicked(param1:MouseEvent):void
         {
            param1.currentTarget.removeEventListener(param1.type,pennyClicked);
            StDMain.instance.StartScene("StDPenny");
         });
         Helpers.CreateButton(this.tranq,true,false);
         this.tranq.addEventListener(MouseEvent.CLICK,function tranqClicked(param1:MouseEvent):void
         {
            param1.currentTarget.removeEventListener(param1.type,tranqClicked);
            StDMain.instance.StartScene("StDTranq");
         });
         Helpers.CreateButton(this.fpunch,true,false);
         this.fpunch.addEventListener(MouseEvent.CLICK,function fpunchClicked(param1:MouseEvent):void
         {
            param1.currentTarget.removeEventListener(param1.type,fpunchClicked);
            StDMain.instance.StartScene("StDFPunch");
         });
         Helpers.CreateButton(this.invis,true,false);
         this.invis.addEventListener(MouseEvent.CLICK,function invisClicked(param1:MouseEvent):void
         {
            param1.currentTarget.removeEventListener(param1.type,invisClicked);
            StDMain.instance.StartScene("StDInvis");
         });
      }
   }
}
