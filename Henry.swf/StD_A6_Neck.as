package
{
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_A6_Neck extends MovieClip
   {
       
      
      public var bios_std:MovieClip;
      
      public function StD_A6_Neck()
      {
         super();
         addFrameScript(117,this.frame118);
      }
      
      function frame118() : *
      {
         if(AchMain.instance)
         {
            AchMain.instance.Unlock(stage,"std_bunp");
         }
         if(AchMain.instance)
         {
            AchMain.instance.Unlock(stage,"std_bunp");
         }
         StDMain.instance.ShowFail("std_neck","backdoor");
         stop();
      }
   }
}
