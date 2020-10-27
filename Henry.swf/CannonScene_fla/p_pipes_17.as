package CannonScene_fla
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class p_pipes_17 extends MovieClip
   {
       
      
      public function p_pipes_17()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      function frame1() : *
      {
         stop();
         if(StDMain.instance)
         {
            StDMain.instance.SetupPainting(this);
         }
      }
      
      function frame2() : *
      {
         stop();
      }
   }
}
