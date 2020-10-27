package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B2_Vent extends MovieClip
   {
       
      
      public var keyy:MovieClip;
      
      public function ItA_B2_Vent()
      {
         super();
         addFrameScript(170,this.frame171);
      }
      
      function frame171() : *
      {
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItAEngineGem");
         }
      }
   }
}
