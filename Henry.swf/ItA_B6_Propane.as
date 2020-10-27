package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B6_Propane extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_B6_Propane()
      {
         super();
         addFrameScript(117,this.frame118);
      }
      
      function frame118() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_propane","wingchoice");
         }
         stop();
      }
   }
}
