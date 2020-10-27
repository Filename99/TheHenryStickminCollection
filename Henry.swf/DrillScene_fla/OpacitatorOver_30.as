package DrillScene_fla
{
   import flash.display.MovieClip;
   
   public dynamic class OpacitatorOver_30 extends MovieClip
   {
       
      
      public function OpacitatorOver_30()
      {
         super();
         addFrameScript(9,this.frame10);
      }
      
      function frame10() : *
      {
         stop();
      }
   }
}
