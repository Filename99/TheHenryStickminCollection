package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_C7_Choice extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var bio:MovieClip;
      
      public var bios_ita:MovieClip;
      
      public var dummies:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var missile:MovieClip;
      
      public var parachute:MovieClip;
      
      public var tank:MovieClip;
      
      public var mapButt;
      
      public function ItA_C7_Choice()
      {
         super();
         addFrameScript(45,this.frame46,50,this.frame51);
      }
      
      function frame46() : *
      {
         Helpers.StopMusic("grabhim");
      }
      
      function frame51() : *
      {
         stop();
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
            ItAMain.instance.SetPath("c",8);
            this.mapButt = this.map;
            this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               ItAMain.instance.ToggleMap(mapButt);
            });
         }
         Helpers.CreateButton(this.parachute,true,false);
         this.parachute.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAParachute");
         });
         Helpers.CreateButton(this.dummies,true,false);
         this.dummies.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItADummies");
         });
         Helpers.CreateButton(this.map,true,false);
         Helpers.CreateButton(this.tank,true,false);
         this.tank.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItATank");
         });
         Helpers.CreateButton(this.missile,true,false);
         this.missile.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAMissile");
         });
      }
   }
}
