package
{
   import flash.display.MovieClip;
   
   public dynamic class AchievementUnlocked extends MovieClip
   {
       
      
      public function AchievementUnlocked()
      {
         super();
         addFrameScript(71,this.frame72);
      }
      
      function frame72() : *
      {
         stop();
         if(this.parent)
         {
            this.parent.removeChild(this);
         }
      }
   }
}
