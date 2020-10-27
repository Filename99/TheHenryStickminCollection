package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B4_Hack extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_B4_Hack()
      {
         super();
         addFrameScript(106,this.frame107);
      }
      
      function frame107() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_hack","prisonb");
         }
         stop();
      }
   }
}
