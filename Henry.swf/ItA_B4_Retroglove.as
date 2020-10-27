package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B4_Retroglove extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public var dave:MovieClip;
      
      public function ItA_B4_Retroglove()
      {
         super();
         addFrameScript(69,this.frame70,121,this.frame122);
      }
      
      function frame70() : *
      {
         if(ItAMain.instance && ItAMain.instance.goronStage >= ItAMain.BiggoronDaveUnlocked)
         {
            this.dave.stop();
            removeChild(this.dave);
         }
      }
      
      function frame122() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_retroglove","prisonb");
         }
         stop();
      }
   }
}
