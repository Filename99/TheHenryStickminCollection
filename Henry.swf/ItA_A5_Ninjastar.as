package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A5_Ninjastar extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_A5_Ninjastar()
      {
         super();
         addFrameScript(39,this.frame40);
      }
      
      function frame40() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_ninjastar","ItARecords");
         }
         stop();
      }
   }
}
