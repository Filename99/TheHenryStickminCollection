package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B4_Paperizor extends MovieClip
   {
       
      
      public function ItA_B4_Paperizor()
      {
         super();
         addFrameScript(408,this.frame409);
      }
      
      function frame409() : *
      {
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItAVault");
         }
      }
   }
}
