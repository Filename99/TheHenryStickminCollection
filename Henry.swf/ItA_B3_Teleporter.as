package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B3_Teleporter extends MovieClip
   {
       
      
      public var bg:MovieClip;
      
      public function ItA_B3_Teleporter()
      {
         super();
         addFrameScript(0,this.frame1,191,this.frame192,334,this.frame335,375,this.frame376);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame192() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame335() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b3_teleporter_ummm");
         }
      }
      
      function frame376() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_teleporter","b3choice");
         }
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
   }
}
