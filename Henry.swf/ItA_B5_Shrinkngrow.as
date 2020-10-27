package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B5_Shrinkngrow extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_B5_Shrinkngrow()
      {
         super();
         addFrameScript(0,this.frame1,220,this.frame221,277,this.frame278,285,this.frame286,309,this.frame310,313,this.frame314,421,this.frame422,428,this.frame429,459,this.frame460,469,this.frame470,551,this.frame552,619,this.frame620,704,this.frame705,953,this.frame954);
      }
      
      function frame1() : *
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
            ItAMain.instance.DriveSub("b5_shrinkngrow_heyyousto");
         }
      }
      
      function frame278() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame286() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b5_shrinkngrow_whatsgoing");
         }
      }
      
      function frame310() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame314() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b5_shrinkngrow_itlookslik");
         }
      }
      
      function frame422() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame429() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b5_shrinkngrow_whathesg");
         }
      }
      
      function frame460() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame470() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b5_shrinkngrow_alrightmove");
         }
      }
      
      function frame552() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame620() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b5_shrinkngrow_yeahthisis");
         }
      }
      
      function frame705() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame954() : *
      {
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItAWing");
         }
      }
   }
}
