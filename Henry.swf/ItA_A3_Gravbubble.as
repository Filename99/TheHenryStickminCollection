package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_A3_Gravbubble extends MovieClip
   {
       
      
      public var bg2:MovieClip;
      
      public var bios_ita:MovieClip;
      
      public function ItA_A3_Gravbubble()
      {
         super();
         addFrameScript(0,this.frame1,8,this.frame9,58,this.frame59,65,this.frame66,130,this.frame131,138,this.frame139,176,this.frame177,191,this.frame192,204,this.frame205,220,this.frame221,233,this.frame234,284,this.frame285,294,this.frame295,320,this.frame321,346,this.frame347,395,this.frame396);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame9() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a3_gravbubble_heyihavet");
         }
      }
      
      function frame59() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame66() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a3_gravbubble_shouldbeab");
         }
      }
      
      function frame131() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame139() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a3_gravbubble_lemmejust");
         }
      }
      
      function frame177() : *
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
            ItAMain.instance.DriveSub("a3_gravbubble_up");
         }
      }
      
      function frame205() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame221() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a3_gravbubble_down");
         }
      }
      
      function frame234() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame285() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a3_gravbubble_hm");
         }
      }
      
      function frame295() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame321() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("a3_gravbubble_diditwork");
         }
      }
      
      function frame347() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame396() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_gravbubble","engineroom");
         }
         stop();
         this.bg2.bg.chains.stop();
         this.bg2.bg.pipe1.stop();
         this.bg2.bg.pipe2.stop();
         this.bg2.bg.pipe3.stop();
         this.bg2.bg.gear.stop();
         this.bg2.bg.gears.stop();
      }
   }
}
