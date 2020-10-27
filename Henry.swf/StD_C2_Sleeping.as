package
{
   import flash.display.MovieClip;
   
   public dynamic class StD_C2_Sleeping extends MovieClip
   {
       
      
      public function StD_C2_Sleeping()
      {
         super();
         addFrameScript(0,this.frame1,19,this.frame20,32,this.frame33);
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame20() : *
      {
         stop();
      }
      
      function frame33() : *
      {
         stop();
      }
   }
}
