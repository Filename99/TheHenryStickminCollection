package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_D1_ZPE extends MovieClip
   {
       
      
      public function ItA_D1_ZPE()
      {
         super();
         addFrameScript(90,this.frame91);
      }
      
      function frame91() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_zpe","safe");
         }
         stop();
      }
   }
}
