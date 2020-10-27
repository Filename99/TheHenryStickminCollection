package GravGunScene_fla
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   
   public dynamic class BGS_Flashdrive_3 extends MovieClip
   {
       
      
      public var fd:SimpleButton;
      
      public function BGS_Flashdrive_3()
      {
         super();
         addFrameScript(0,this.frame1,27,this.frame28);
      }
      
      public function fdClicked(param1:MouseEvent) : void
      {
         gotoAndPlay(2);
         MovieClip(root).ia.data.flashdrive = 1;
      }
      
      function frame1() : *
      {
         stop();
         this.fd.addEventListener(MouseEvent.CLICK,this.fdClicked);
      }
      
      function frame28() : *
      {
         stop();
      }
   }
}
