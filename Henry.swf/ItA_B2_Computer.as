package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B2_Computer extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_B2_Computer()
      {
         super();
         addFrameScript(362,this.frame363);
      }
      
      function frame363() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_computer","monitorroom");
         }
         stop();
      }
   }
}
