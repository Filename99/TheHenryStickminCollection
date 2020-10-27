package ChaosTrans_fla
{
   import flash.display.MovieClip;
   
   public dynamic class Nighttime_6 extends MovieClip
   {
       
      
      public function Nighttime_6()
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
