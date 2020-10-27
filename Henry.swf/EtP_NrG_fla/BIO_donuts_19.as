package EtP_NrG_fla
{
   import com.innersloth.henry.Bios.BiosMain;
   import flash.display.MovieClip;
   
   public dynamic class BIO_donuts_19 extends MovieClip
   {
       
      
      public function BIO_donuts_19()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         BiosMain.instance.SetupUnlocker(this,"etp_donuts");
      }
   }
}
