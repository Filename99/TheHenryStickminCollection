package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_B7_DEB extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_B7_DEB()
      {
         super();
         addFrameScript(0,this.frame1,373,this.frame374,395,this.frame396,498,this.frame499);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame374() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("b7_deb_goodbye");
         }
      }
      
      function frame396() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame499() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.ShowFail("ItA_deb","bfinal");
         }
         stop();
      }
   }
}
