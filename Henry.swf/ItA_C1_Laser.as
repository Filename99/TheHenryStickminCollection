package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_C1_Laser extends MovieClip
   {
       
      
      public function ItA_C1_Laser()
      {
         super();
         addFrameScript(136,this.frame137);
      }
      
      function frame137() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_laser","cockpit");
         }
         stop();
      }
   }
}
