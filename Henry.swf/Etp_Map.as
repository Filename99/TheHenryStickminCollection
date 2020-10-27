package
{
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   
   public dynamic class Etp_Map extends MovieClip
   {
       
      
      public var inner:MovieClip;
      
      public function Etp_Map()
      {
         super();
         addFrameScript(5,this.frame6,7,this.frame8,26,this.frame27);
      }
      
      function frame6() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.RefreshMap();
         }
      }
      
      function frame8() : *
      {
         stop();
      }
      
      function frame27() : *
      {
         this.parent.removeChild(this);
         stop();
      }
   }
}
