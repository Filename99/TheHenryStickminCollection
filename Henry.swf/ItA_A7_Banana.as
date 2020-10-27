package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A7_Banana extends MovieClip
   {
       
      
      public var aa:MovieClip;
      
      public var bios_ita:MovieClip;
      
      public function ItA_A7_Banana()
      {
         super();
         addFrameScript(164,this.frame165);
      }
      
      function frame165() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_banana","afinalchoice");
         }
         stop();
         this.aa.aa.stop();
         this.aa.ss.stop();
         this.aa.dd.stop();
      }
   }
}
