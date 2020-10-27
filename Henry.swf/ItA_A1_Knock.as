package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A1_Knock extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_A1_Knock()
      {
         super();
         addFrameScript(111,this.frame112);
      }
      
      function frame112() : *
      {
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_knock","airshiptop");
         }
      }
   }
}
