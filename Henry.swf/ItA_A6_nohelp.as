package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A6_nohelp extends MovieClip
   {
       
      
      public function ItA_A6_nohelp()
      {
         super();
         addFrameScript(72,this.frame73);
      }
      
      function frame73() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_nohelp","ItAPowerVent");
         }
         stop();
      }
   }
}
