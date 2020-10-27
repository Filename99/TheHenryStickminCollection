package
{
   import flash.display.MovieClip;
   
   public dynamic class BtB_FailScreen extends MovieClip
   {
       
      
      public var btb_ach:MovieClip;
      
      public var btb_bios:MovieClip;
      
      public var btb_menu:MovieClip;
      
      public var btb_retry:MovieClip;
      
      public var failwords:MovieClip;
      
      public function BtB_FailScreen()
      {
         super();
         addFrameScript(12,this.frame13,29,this.frame30);
      }
      
      function frame13() : *
      {
         this.failwords.gotoAndStop(this.failwordLabel);
      }
      
      function frame30() : *
      {
         this.failwords.gotoAndStop(this.failwordLabel);
         stop();
      }
   }
}
