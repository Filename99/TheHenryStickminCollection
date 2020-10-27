package BoxTransScene_fla
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class p_stars_5 extends MovieClip
   {
       
      
      public function p_stars_5()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
         if(StDMain.instance)
         {
            StDMain.instance.SetupPainting(this);
         }
      }
   }
}
