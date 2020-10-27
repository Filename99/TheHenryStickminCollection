package
{
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_A1_Jumble extends MovieClip
   {
       
      
      public function StD_A1_Jumble()
      {
         super();
         addFrameScript(246,this.frame247,317,this.frame318);
      }
      
      function frame247() : *
      {
         if(StDMain.instance && StDMain.instance.jumblesHopped == 3)
         {
            AchMain.instance.Unlock(this,"std_d6");
         }
      }
      
      function frame318() : *
      {
         StDMain.instance.ShowFail("std_jumble","sneakinmain");
         stop();
      }
   }
}
