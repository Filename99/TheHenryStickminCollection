package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A1_Acid extends MovieClip
   {
       
      
      public function ItA_A1_Acid()
      {
         super();
         addFrameScript(78,this.frame79);
      }
      
      function frame79() : *
      {
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_acid","airshiptop");
         }
      }
   }
}
