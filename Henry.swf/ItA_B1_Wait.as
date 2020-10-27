package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B1_Wait extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public var ikNode_1:MovieClip;
      
      public function ItA_B1_Wait()
      {
         super();
         addFrameScript(177,this.frame178);
      }
      
      function frame178() : *
      {
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItASurveillanceRoom");
         }
      }
   }
}
