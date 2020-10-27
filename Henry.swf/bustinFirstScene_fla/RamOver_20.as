package bustinFirstScene_fla
{
   import flash.display.MovieClip;
   
   public dynamic class RamOver_20 extends MovieClip
   {
       
      
      public function RamOver_20()
      {
         super();
         addFrameScript(10,this.frame11);
      }
      
      function frame11() : *
      {
         stop();
      }
   }
}
