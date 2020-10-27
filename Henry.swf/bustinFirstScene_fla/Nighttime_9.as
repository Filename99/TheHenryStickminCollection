package bustinFirstScene_fla
{
   import flash.display.MovieClip;
   
   public dynamic class Nighttime_9 extends MovieClip
   {
       
      
      public function Nighttime_9()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         this.mouseEnabled = false;
         stop();
      }
   }
}
