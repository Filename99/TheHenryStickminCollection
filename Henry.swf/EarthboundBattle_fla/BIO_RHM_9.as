package EarthboundBattle_fla
{
   import com.innersloth.henry.Bios.BiosMain;
   import flash.display.MovieClip;
   
   public dynamic class BIO_RHM_9 extends MovieClip
   {
       
      
      public function BIO_RHM_9()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         if(BiosMain.instance)
         {
            BiosMain.instance.SetupUnlocker(this,"ita_rhm");
         }
      }
   }
}
