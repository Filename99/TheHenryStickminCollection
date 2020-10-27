package
{
   import flash.display.MovieClip;
   
   public dynamic class PaintingUnlocker extends MovieClip
   {
       
      
      public var num:MovieClip;
      
      public var painting:MovieClip;
      
      public function PaintingUnlocker()
      {
         super();
         addFrameScript(0,this.frame1,48,this.frame49);
      }
      
      function frame1() : *
      {
         this.painting.gotoAndStop(this["paintingName"] || 1);
         this.num.gotoAndStop(this["paintingNum"] || 1);
      }
      
      function frame49() : *
      {
         stop();
      }
   }
}
