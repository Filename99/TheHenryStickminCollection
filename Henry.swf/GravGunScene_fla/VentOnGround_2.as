package GravGunScene_fla
{
   import flash.display.MovieClip;
   
   public dynamic class VentOnGround_2 extends MovieClip
   {
       
      
      public function VentOnGround_2()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      function frame1() : *
      {
         stop();
      }
      
      function frame2() : *
      {
         stop();
      }
   }
}
