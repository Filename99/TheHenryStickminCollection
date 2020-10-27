package DrillScene_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class Bagel1_8 extends MovieClip
   {
       
      
      public var donut:MovieClip;
      
      public function Bagel1_8()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function donutbuttonClicked(param1:MouseEvent) : void
      {
         gotoAndPlay(2);
      }
      
      function frame1() : *
      {
         stop();
         this.donut.addEventListener(MouseEvent.CLICK,this.donutbuttonClicked);
      }
      
      function frame2() : *
      {
         stop();
      }
   }
}
