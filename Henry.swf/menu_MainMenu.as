package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.MainScene;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class menu_MainMenu extends MovieClip
   {
       
      
      public var BtB_ach:MovieClip;
      
      public var BtB_bios:MovieClip;
      
      public var BtB_fails:MovieClip;
      
      public var bgs:MovieClip;
      
      public var borders:MovieClip;
      
      public var deleteConfirm:MovieClip;
      
      public var gameButtons:MovieClip;
      
      public var larrow:MovieClip;
      
      public var lfade:MovieClip;
      
      public var options:MovieClip;
      
      public var optionsButton:MovieClip;
      
      public var rarrow:MovieClip;
      
      public var rfade:MovieClip;
      
      public var startEtP:MovieClip;
      
      public var startFtC:MovieClip;
      
      public var startItA:MovieClip;
      
      public var startStD:MovieClip;
      
      public function menu_MainMenu()
      {
         super();
         addFrameScript(0,this.frame1,18,this.frame19,30,this.frame31,64,this.frame65);
      }
      
      function frame1() : *
      {
         if(MainScene.instance)
         {
            MainScene.instance.EvalArrows();
         }
         this.options.visible = false;
      }
      
      function frame19() : *
      {
         stop();
         if(MainScene.instance)
         {
            MainScene.instance.EvalArrows();
         }
         Helpers.CreateButton(this.BtB_fails,true,false);
         Helpers.CreateButton(this.BtB_ach,true,false);
         Helpers.CreateButton(this.BtB_bios,true,false);
         Helpers.CreateButton(this.rarrow,true,false);
         Helpers.CreateButton(this.larrow,true,false);
         this.BtB_bios.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            BiosMain.instance.Toggle(stage);
         });
         this.larrow.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            MainScene.instance.ScrollLeft();
         });
         this.rarrow.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            MainScene.instance.ScrollRight();
         });
         Helpers.CreateButton(this.optionsButton,true,false);
         this.optionsButton.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            options.visible = !options.visible;
            if(options.visible)
            {
               options.gotoAndPlay(1);
            }
         });
      }
      
      function frame31() : *
      {
         Helpers.StopFaderMusic();
      }
      
      function frame65() : *
      {
         stop();
         if(MainScene.instance)
         {
            MainScene.instance.PlayGame();
         }
      }
   }
}
