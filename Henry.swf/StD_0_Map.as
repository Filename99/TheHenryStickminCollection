package
{
   import flash.display.MovieClip;
   
   public dynamic class StD_0_Map extends MovieClip
   {
       
      
      public var inner:MovieClip;
      
      public function StD_0_Map()
      {
         super();
         addFrameScript(7,this.frame8,24,this.frame25);
      }
      
      function frame8() : *
      {
         stop();
      }
      
      function frame25() : *
      {
         stop();
         this.parent.removeChild(this);
      }
   }
}
