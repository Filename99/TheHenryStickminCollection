package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B7_Unknown extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_B7_Unknown()
      {
         super();
         addFrameScript(582,this.frame583);
      }
      
      function frame583() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_unknown","bfinal");
         }
         stop();
      }
   }
}
