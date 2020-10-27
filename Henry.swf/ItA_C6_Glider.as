package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_C6_Glider extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_C6_Glider()
      {
         super();
         addFrameScript(0,this.frame1,162,this.frame163,177,this.frame178,203,this.frame204,239,this.frame240,411,this.frame412,428,this.frame429,523,this.frame524,531,this.frame532,576,this.frame577,608,this.frame609,693,this.frame694,713,this.frame714);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame163() : *
      {
         Helpers.StartMusic("grabhim",grabhim,0.5);
      }
      
      function frame178() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c6_glider_helpheelp");
         }
      }
      
      function frame204() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame240() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame412() : *
      {
         Helpers.SetVolume("grabhim",0.3);
      }
      
      function frame429() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c6_glider_listenlist");
         }
      }
      
      function frame524() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame532() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c6_glider_isurrender");
         }
      }
      
      function frame577() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame609() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c6_glider_greatworkh");
         }
      }
      
      function frame694() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame714() : *
      {
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItACFinal");
         }
      }
   }
}
