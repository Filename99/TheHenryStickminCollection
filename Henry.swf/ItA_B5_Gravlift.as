package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B5_Gravlift extends MovieClip
   {
       
      
      public var a:MovieClip;
      
      public function ItA_B5_Gravlift()
      {
         super();
         addFrameScript(74,this.frame75);
      }
      
      function frame75() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_gravgun","vault");
         }
         stop();
         this.a.aa.stop();
         this.a.ss.stop();
         this.a.dd.stop();
      }
   }
}
