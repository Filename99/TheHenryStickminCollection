package
{
   import com.innersloth.henry.ItA.ItAMain;
   import flash.display.MovieClip;
   
   public dynamic class ItA_C1_Chair extends MovieClip
   {
       
      
      public var bios_ita:MovieClip;
      
      public function ItA_C1_Chair()
      {
         super();
         addFrameScript(0,this.frame1,259,this.frame260,322,this.frame323,329,this.frame330,392,this.frame393,407,this.frame408,435,this.frame436,467,this.frame468);
      }
      
      function frame1() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame260() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c1_chair_everyonelis");
         }
      }
      
      function frame323() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame330() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c1_chair_keepalooko");
         }
      }
      
      function frame393() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame408() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("c1_chair_noimseri");
         }
      }
      
      function frame436() : *
      {
         if(ItAMain.instance)
         {
            ItAMain.instance.DriveSub("");
         }
      }
      
      function frame468() : *
      {
         stop();
         if(ItAMain.instance)
         {
            ItAMain.instance.StartScene("ItABoilerChoice");
         }
      }
   }
}
