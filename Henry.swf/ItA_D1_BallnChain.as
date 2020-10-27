package
{
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_D1_BallnChain extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_D1_BallnChain()
      {
         super();
         addFrameScript(0,this.frame1,101,this.frame102,147,this.frame148,153,this.frame154,192,this.frame193,439,this.frame440,569,this.frame570);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame102() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("d1_ballnchain_heyheydy");
         }
      }
      
      function frame148() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame154() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("d1_ballnchain_nawmanid");
         }
      }
      
      function frame193() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame440() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame570() : *
      {
         AchMain.instance.Unlock(this,"ita_youwin");
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_ballnchain","safe");
         }
         stop();
      }
   }
}
