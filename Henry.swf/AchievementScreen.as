package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class AchievementScreen extends MovieClip
   {
       
      
      public var returnButton:MovieClip;
      
      public var startbtb:MovieClip;
      
      public var startctm:MovieClip;
      
      public var startetp:MovieClip;
      
      public var startftc:MovieClip;
      
      public var startita:MovieClip;
      
      public var startstd:MovieClip;
      
      public var tickets:MovieClip;
      
      public function AchievementScreen()
      {
         super();
         addFrameScript(3,this.frame4,8,this.frame9,25,this.frame26);
      }
      
      function frame4() : *
      {
         if(AchMain.instance)
         {
            AchMain.instance.SetupHeader(this);
         }
         Helpers.CreateButton(this.returnButton,true,false);
         this.returnButton.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            gotoAndPlay("transout");
         });
      }
      
      function frame9() : *
      {
         stop();
      }
      
      function frame26() : *
      {
         stop();
         AchMain.instance.Close();
      }
   }
}
