package BombScene_fla
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class Painting_tower_9 extends MovieClip
   {
       
      
      public function Painting_tower_9()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         stop();
         stop();
         if(StDMain.instance)
         {
            StDMain.instance.SetupPainting(this);
         }
      }
   }
}
