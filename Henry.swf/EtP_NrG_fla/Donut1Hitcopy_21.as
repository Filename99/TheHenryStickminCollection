package EtP_NrG_fla
{
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   
   public dynamic class Donut1Hitcopy_21 extends MovieClip
   {
       
      
      public function Donut1Hitcopy_21()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      function frame1() : *
      {
         stop();
         if(EtPMain.instance)
         {
            EtPMain.instance.SetupDonut(this);
         }
      }
      
      function frame2() : *
      {
         stop();
      }
   }
}
