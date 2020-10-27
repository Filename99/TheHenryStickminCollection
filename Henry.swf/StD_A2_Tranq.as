package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_A2_Tranq extends MovieClip
   {
       
      
      public function StD_A2_Tranq()
      {
         super();
         addFrameScript(210,this.frame211);
      }
      
      function frame211() : *
      {
         StDMain.instance.ShowFail("std_tranq","rooftop");
         stop();
      }
   }
}
