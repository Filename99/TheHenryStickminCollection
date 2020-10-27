package
{
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   
   public dynamic class EtP_Parachute extends MovieClip
   {
       
      
      public function EtP_Parachute()
      {
         super();
         addFrameScript(401,this.frame402,405,this.frame406);
      }
      
      function frame402() : *
      {
         EtPMain.instance.ShowFail("etp_parachute","RoofChoice");
      }
      
      function frame406() : *
      {
         stop();
      }
   }
}
