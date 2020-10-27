package
{
   import flash.display.MovieClip;
   
   public dynamic class BioUnlock extends MovieClip
   {
       
      
      public function BioUnlock()
      {
         super();
         addFrameScript(22,this.frame23,58,this.frame59);
      }
      
      function frame23() : *
      {
         stop();
         this.parent.removeChild(this);
      }
      
      function frame59() : *
      {
         stop();
         this.parent.removeChild(this);
      }
   }
}
