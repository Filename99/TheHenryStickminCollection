package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B4_Magic extends MovieClip
   {
       
      
      public function ItA_B4_Magic()
      {
         super();
         addFrameScript(85,this.frame86);
      }
      
      function frame86() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_magic","prisonb");
         }
         stop();
      }
   }
}
