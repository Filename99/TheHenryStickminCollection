package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A3_Robohelper extends MovieClip
   {
       
      
      public var bg2:MovieClip;
      
      public function ItA_A3_Robohelper()
      {
         super();
         addFrameScript(0,this.frame1,15,this.frame16,40,this.frame41,229,this.frame230);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame16() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a3_robohelper_alrighther");
         }
      }
      
      function frame41() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame230() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItARampRoom");
         }
         stop();
      }
   }
}
