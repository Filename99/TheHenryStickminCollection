package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_B5_Vault extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var bg:MovieClip;
      
      public var bio:MovieClip;
      
      public var clawpack:MovieClip;
      
      public var gravmanip:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var shrinkngrow:MovieClip;
      
      public var mapButt;
      
      public function ItA_B5_Vault()
      {
         super();
         addFrameScript(18,this.frame19,38,this.frame39);
      }
      
      function frame19() : *
      {
         this.bg.aa.stop();
      }
      
      function frame39() : *
      {
         stop();
         this.bg.aa.stop();
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
            ItAMain.instance.SetPath("b",6);
            this.mapButt = this.map;
            this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               ItAMain.instance.ToggleMap(mapButt);
            });
         }
         Helpers.CreateButton(this.clawpack,true,false);
         this.clawpack.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAClawPack");
         });
         Helpers.CreateButton(this.shrinkngrow,true,false);
         this.shrinkngrow.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAShrinkNGrow");
         });
         Helpers.CreateButton(this.gravmanip,true,false);
         this.gravmanip.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAGravManip");
         });
      }
   }
}
