package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B7_Laserlaunch extends MovieClip
   {
       
      
      public function ItA_B7_Laserlaunch()
      {
         super();
         addFrameScript(263,this.frame264);
      }
      
      function frame264() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_lcut","bfinal");
         }
         stop();
      }
   }
}
