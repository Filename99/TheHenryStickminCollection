package
{
   import flash.display.MovieClip;
   
   public dynamic class donutGet extends MovieClip
   {
       
      
      public function donutGet()
      {
         super();
         addFrameScript(41,this.frame42);
      }
      
      function frame42() : *
      {
         stop();
         this.parent.removeChild(this);
      }
   }
}
