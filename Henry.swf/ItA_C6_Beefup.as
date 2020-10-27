package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_C6_Beefup extends MovieClip
   {
       
      
      public var bg:MovieClip;
      
      public function ItA_C6_Beefup()
      {
         super();
         addFrameScript(140,this.frame141);
      }
      
      function frame141() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_beefup","ventroom");
         }
         stop();
         this.bg.aa.stop();
         this.bg.ss.stop();
         this.bg.dd.stop();
         this.bg.ff.stop();
         this.bg.gg.stop();
         this.bg.hh.stop();
         this.bg.jj.stop();
         this.bg.kk.stop();
         this.bg.ll.stop();
      }
   }
}
