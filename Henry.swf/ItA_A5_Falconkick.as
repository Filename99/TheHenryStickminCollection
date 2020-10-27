package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A5_Falconkick extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_A5_Falconkick()
      {
         super();
         addFrameScript(0,this.frame1,7,this.frame8,23,this.frame24,71,this.frame72);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame8() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a5_falconkick_falcon");
         }
      }
      
      function frame24() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame72() : *
      {
         trace("BUBUBUBUBUBUDDDF");
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_falconkick","ItARecords");
         }
         stop();
      }
   }
}
