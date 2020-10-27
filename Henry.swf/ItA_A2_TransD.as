package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A2_TransD extends MovieClip
   {
       
      
      public function ItA_A2_TransD()
      {
         super();
         addFrameScript(276,this.frame277);
      }
      
      function frame277() : *
      {
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_transd","boardroomchoice");
         }
      }
   }
}
