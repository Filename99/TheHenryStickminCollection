package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class ItA_C6_AfterVG extends MovieClip
   {
       
      
      public var ach:MovieClip;
      
      public var beefup:MovieClip;
      
      public var bg:MovieClip;
      
      public var bio:MovieClip;
      
      public var glider:MovieClip;
      
      public var jetboots:MovieClip;
      
      public var map:MovieClip;
      
      public var menu:MovieClip;
      
      public var mapButt;
      
      public function ItA_C6_AfterVG()
      {
         super();
         addFrameScript(157,this.frame158,183,this.frame184);
      }
      
      function frame158() : *
      {
         this.bg.aa.stop();
         this.bg.ss.stop();
         this.bg.dd.stop();
         this.bg.ff.stop();
         this.bg.gg.stop();
         this.bg.hh.stop();
         this.bg.jj.stop();
         this.bg.kk.stop();
         this.bg.ll.stop();
      }
      
      function frame184() : *
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
         this.bg.aa.stop();
         this.bg.ss.stop();
         this.bg.dd.stop();
         this.bg.ff.stop();
         this.bg.gg.stop();
         this.bg.hh.stop();
         this.bg.jj.stop();
         this.bg.kk.stop();
         this.bg.ll.stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.SetPath("c",7);
            this.mapButt = this.map;
            this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               ItAMain.instance.ToggleMap(mapButt);
            });
         }
         Helpers.CreateButton(this.glider,true,false);
         this.glider.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAGlider");
         });
         Helpers.CreateButton(this.jetboots,true,false);
         this.jetboots.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItAJetBoots");
         });
         Helpers.CreateButton(this.beefup,true,false);
         this.beefup.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            ItAMain.instance.StartScene("ItABeefUp");
         });
      }
   }
}
