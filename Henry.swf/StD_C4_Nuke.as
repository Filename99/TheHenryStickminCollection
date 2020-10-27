package
{
   import com.innersloth.henry.StD.StDMain;
   import flash.display.MovieClip;
   
   public dynamic class StD_C4_Nuke extends MovieClip
   {
       
      
      public function StD_C4_Nuke()
      {
         super();
         addFrameScript(469,this.frame470,473,this.frame474);
      }
      
      function frame470() : *
      {
         StDMain.instance.ShowFail("std_nuke","StDCCCChoice");
      }
      
      function frame474() : *
      {
         stop();
      }
   }
}
