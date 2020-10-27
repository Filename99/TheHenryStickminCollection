package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_C1_Gun extends MovieClip
   {
       
      
      public function StD_C1_Gun()
      {
         super();
         addFrameScript(115,this.frame116,119,this.frame120);
      }
      
      function frame116() : *
      {
         StDMain.instance.ShowFail("std_gun","ww2");
      }
      
      function frame120() : *
      {
         stop();
      }
   }
}
