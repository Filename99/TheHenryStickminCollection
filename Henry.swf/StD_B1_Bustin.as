package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_B1_Bustin extends MovieClip
   {
       
      
      public function StD_B1_Bustin()
      {
         super();
         addFrameScript(333,this.frame334);
      }
      
      function frame334() : *
      {
         StDMain.instance.StartScene("StDTimed1");
         stop();
      }
   }
}
