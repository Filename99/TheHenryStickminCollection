package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.MainScene;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class BioScreen extends MovieClip
   {
       
      
      public var btbButton:MovieClip;
      
      public var btb_bios:MovieClip;
      
      public var buttonPages:MovieClip;
      
      public var card:MovieClip;
      
      public var ctm_bios:MovieClip;
      
      public var etp_bios:MovieClip;
      
      public var ftc_bios:MovieClip;
      
      public var info:MovieClip;
      
      public var information:MovieClip;
      
      public var ita_bios:MovieClip;
      
      public var returnButton:MovieClip;
      
      public var std_bios:MovieClip;
      
      public var curGame:String;
      
      public var lastPage:String;
      
      public function BioScreen()
      {
         super();
         addFrameScript(1,this.frame2,7,this.frame8,11,this.frame12,19,this.frame20,38,this.frame39);
      }
      
      function frame2() : *
      {
         if(BiosMain.instance)
         {
            BiosMain.instance.SilentUnlock("btb_henry");
         }
      }
      
      function frame8() : *
      {
         if(BiosMain.instance)
         {
            BiosMain.instance.SetupHeader(this.etp_bios);
            BiosMain.instance.SetupHeader(this.std_bios);
            BiosMain.instance.SetupHeader(this.ita_bios);
            BiosMain.instance.SetupHeader(this.ftc_bios);
            BiosMain.instance.SetupHeader(this.ctm_bios);
            this.curGame = MainScene.instance.allGames[MainScene.instance.currentbg];
            if(this.curGame == BiosMain.instance.lastPage.substring(0,3))
            {
               this.lastPage = BiosMain.instance.lastPage;
               BiosMain.instance.GotoGamePage(this.curGame);
               BiosMain.instance.GotoSubPage(this.lastPage);
            }
            else
            {
               BiosMain.instance.GotoGamePage(this.curGame);
            }
         }
      }
      
      function frame12() : *
      {
         if(!BiosMain.instance || BiosMain.instance.SeenInfo)
         {
            this.info.gotoAndPlay("hide");
         }
         else
         {
            BiosMain.instance.SeenInfo = true;
            BiosMain.instance.SaveToDisk();
         }
      }
      
      function frame20() : *
      {
         Helpers.CreateButton(this.returnButton,true,false);
         this.returnButton.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("transout");
         });
         Helpers.CreateButton(this.information,true,false);
         this.information.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            info.gotoAndStop("show");
         });
         stop();
      }
      
      function frame39() : *
      {
         stop();
         BiosMain.instance.Toggle(this);
      }
   }
}
