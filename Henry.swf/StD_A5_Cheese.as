package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_A5_Cheese extends MovieClip
   {
       
      
      public function StD_A5_Cheese()
      {
         super();
         addFrameScript(171,this.frame172);
      }
      
      function frame172() : *
      {
         StDMain.instance.ShowFail("std_cheese","storage");
         stop();
      }
   }
}
