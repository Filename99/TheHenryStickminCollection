package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B1_Joybuzzer extends MovieClip
   {
       
      
      public function ItA_B1_Joybuzzer()
      {
         super();
         addFrameScript(170,this.frame171);
      }
      
      function frame171() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_joybuzzer","deck");
         }
         stop();
      }
   }
}
