package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_A4_Hammer extends MovieClip
   {
       
      
      public function StD_A4_Hammer()
      {
         super();
         addFrameScript(127,this.frame128);
      }
      
      function frame128() : *
      {
         stop();
         if(StDMain.instance)
         {
            StDMain.instance.StartScene("StDBoxTrans");
         }
      }
   }
}
