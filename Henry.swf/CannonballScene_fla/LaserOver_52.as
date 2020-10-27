package CannonballScene_fla
{
   import flash.display.MovieClip;
   
   public dynamic class LaserOver_52 extends MovieClip
   {
       
      
      public var aa:MovieClip;
      
      public function LaserOver_52()
      {
         super();
         addFrameScript(14,this.frame15);
      }
      
      function frame15() : *
      {
         stop();
         this.aa.stop();
      }
   }
}
