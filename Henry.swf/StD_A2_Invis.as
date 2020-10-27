package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_A2_Invis extends MovieClip
   {
       
      
      public function StD_A2_Invis()
      {
         super();
         addFrameScript(196,this.frame197);
      }
      
      function frame197() : *
      {
         StDMain.instance.ShowFail("std_invisible","rooftop");
         stop();
      }
   }
}
