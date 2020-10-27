package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B3_Pencil extends MovieClip
   {
       
      
      public var bg:MovieClip;
      
      public function ItA_B3_Pencil()
      {
         super();
         addFrameScript(161,this.frame162);
      }
      
      function frame162() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_pencil","b3choice");
         }
         stop();
      }
   }
}
