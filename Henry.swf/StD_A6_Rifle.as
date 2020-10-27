package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_A6_Rifle extends MovieClip
   {
       
      
      public function StD_A6_Rifle()
      {
         super();
         addFrameScript(208,this.frame209);
      }
      
      function frame209() : *
      {
         StDMain.instance.ShowFail("std_rifle","backdoor");
         stop();
      }
   }
}
