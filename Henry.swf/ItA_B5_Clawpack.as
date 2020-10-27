package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B5_Clawpack extends MovieClip
   {
       
      
      public var bg:MovieClip;
      
      public function ItA_B5_Clawpack()
      {
         super();
         addFrameScript(90,this.frame91);
      }
      
      function frame91() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_clawpack","vault");
         }
         stop();
         this.bg.aa.stop();
      }
   }
}
