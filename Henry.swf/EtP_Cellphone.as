package
{
   import com.innersloth.Helpers;
   import com.innersloth.henry.AchMain;
   import com.innersloth.henry.Bios.BiosMain;
   import com.innersloth.henry.EtP.EtPMain;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class EtP_Cellphone extends MovieClip
   {
       
      
      public var achievements:MovieClip;
      
      public var back:MovieClip;
      
      public var badge:MovieClip;
      
      public var bag:MovieClip;
      
      public var bios:MovieClip;
      
      public var bios_sideburns:MovieClip;
      
      public var device:MovieClip;
      
      public var etp_menu:MovieClip;
      
      public var left:MovieClip;
      
      public var map:MovieClip;
      
      public var note:MovieClip;
      
      public var photo:MovieClip;
      
      public var present:MovieClip;
      
      public var right:MovieClip;
      
      public var tape:MovieClip;
      
      public var self;
      
      public function EtP_Cellphone()
      {
         super();
         addFrameScript(0,this.frame1,399,this.frame400,466,this.frame467,489,this.frame490,508,this.frame509,538,this.frame539,620,this.frame621,636,this.frame637,687,this.frame688,701,this.frame702,775,this.frame776,781,this.frame782,823,this.frame824,826,this.frame827,849,this.frame850,870,this.frame871,969,this.frame970,981,this.frame982,1010,this.frame1011,1033,this.frame1034,1073,this.frame1074,1095,this.frame1096,1128,this.frame1129,1150,this.frame1151,1238,this.frame1239,1255,this.frame1256,1314,this.frame1315,1324,this.frame1325,1369,this.frame1370,1391,this.frame1392,1392,this.frame1393,1398,this.frame1399,1403,this.frame1404,1409,this.frame1410,1415,this.frame1416,1420,this.frame1421,1428,this.frame1429,1455,this.frame1456,1493,this.frame1494,1534,this.frame1535,1549,this.frame1550,1575,this.frame1576,1612,this.frame1613,1696,this.frame1697,1742,this.frame1743,1768,this.frame1769,1784,this.frame1785,1816,this.frame1817,1832,this.frame1833,1872,this.frame1873,1881,this.frame1882,1949,this.frame1950,1954,this.frame1955,1963,this.frame1964,2033,this.frame2034,2041,this.frame2042,2048,this.frame2049,2074,this.frame2075,2104,this.frame2105,2165,this.frame2166,2188,this.frame2189,2252,this.frame2253,2257,this.frame2258,2329,this.frame2330,2354,this.frame2355,2423,this.frame2424,2442,this.frame2443,2459,this.frame2460,2477,this.frame2478,2585,this.frame2586,2602,this.frame2603,2648,this.frame2649,2665,this.frame2666,2691,this.frame2692,2713,this.frame2714,2737,this.frame2738,2744,this.frame2745,2814,this.frame2815,2840,this.frame2841,2903,this.frame2904,2925,this.frame2926,2956,this.frame2957,2966,this.frame2967,3006,this.frame3007,3029,this.frame3030,3048,this.frame3049,3059,this.frame3060,3174,this.frame3175,3182,this.frame3183,3248,this.frame3249,3277,this.frame3278,3331,this.frame3332,3355,this.frame3356,3422,this.frame3423,3428,this.frame3429,3535,this.frame3536,3546,this.frame3547,3665,this.frame3666,3679,this.frame3680,3727,this.frame3728,3739,this.frame3740,3803,this.frame3804,3812,this.frame3813,3941,this.frame3942,3950,this.frame3951,4008,this.frame4009,4018,this.frame4019,4100,this.frame4101,4108,this.frame4109,4181,this.frame4182,4190,this.frame4191,4248,this.frame4249,4271,this.frame4272,4329,this.frame4330,4333,this.frame4334,4425,this.frame4426,4513,this.frame4514,4603,this.frame4604,4614,this.frame4615,4677,this.frame4678,4696,this.frame4697,4763,this.frame4764,5114,this.frame5115);
      }
      
      public function photobuttonClicked(param1:MouseEvent) : void
      {
         gotoAndPlay("photo");
         param1.target.removeEventListener(MouseEvent.CLICK,this.photobuttonClicked);
      }
      
      public function bagbuttonClicked(param1:MouseEvent) : void
      {
         gotoAndPlay("bag");
         param1.target.removeEventListener(MouseEvent.CLICK,this.bagbuttonClicked);
      }
      
      public function devicebuttonClicked(param1:MouseEvent) : void
      {
         gotoAndPlay("device");
         param1.target.removeEventListener(MouseEvent.CLICK,this.devicebuttonClicked);
      }
      
      public function tapebuttonClicked(param1:MouseEvent) : void
      {
         gotoAndPlay("tape");
         param1.target.removeEventListener(MouseEvent.CLICK,this.tapebuttonClicked);
      }
      
      public function notebuttonClicked(param1:MouseEvent) : void
      {
         gotoAndPlay("note");
         param1.target.removeEventListener(MouseEvent.CLICK,this.notebuttonClicked);
      }
      
      public function badgebuttonClicked(param1:MouseEvent) : void
      {
         gotoAndPlay("badge");
         param1.target.removeEventListener(MouseEvent.CLICK,this.badgebuttonClicked);
      }
      
      function frame1() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame400() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_plscontinuetestimony");
         }
      }
      
      function frame467() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame490() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_witnessok");
         }
      }
      
      function frame509() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame539() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_witn_ridingalongsidepartner");
         }
      }
      
      function frame621() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame637() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_witn_spottedbag");
         }
      }
      
      function frame688() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame702() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_witn_gotoutthrowbag");
         }
      }
      
      function frame776() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame782() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_witn_wedidntknow");
         }
      }
      
      function frame824() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame827() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_obj");
         }
      }
      
      function frame850() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame871() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_sodefendant");
         }
      }
      
      function frame970() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame982() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_thatcorrect");
         }
      }
      
      function frame1011() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame1034() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pros_isnotobv");
         }
      }
      
      function frame1074() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame1096() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_isitobvi");
         }
      }
      
      function frame1129() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame1151() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_proof");
         }
      }
      
      function frame1239() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame1256() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_jud_whatwaitfor");
         }
      }
      
      function frame1315() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame1325() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_jud_presentevidence");
         }
      }
      
      function frame1370() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame1392() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.SetPath("b",2);
         }
         stop();
         Helpers.CreateButton(this.map,true,false);
         this.map.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            EtPMain.instance.ToggleMap(map);
         });
         Helpers.CreateButton(this.etp_menu,true,false);
         this.etp_menu.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            EtPMain.instance.GotoMainMenu();
         });
         Helpers.CreateButton(this.achievements,true,false);
         this.achievements.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            AchMain.instance.Toggle(stage);
         });
         Helpers.CreateButton(this.bios,true,false);
         this.bios.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            BiosMain.instance.Toggle(stage);
         });
         Helpers.CreateButton(this.achievements,true,false);
         Helpers.CreateButton(this.bios,true,false);
         Helpers.CreateButton(this.badge,true,false);
         Helpers.CreateButton(this.bag,true,false);
         Helpers.CreateButton(this.photo,true,false);
         Helpers.CreateButton(this.device,true,false);
         Helpers.CreateButton(this.tape,true,false);
         Helpers.CreateButton(this.note,true,false);
         this.badge.addEventListener(MouseEvent.CLICK,this.badgebuttonClicked);
         this.photo.addEventListener(MouseEvent.CLICK,this.photobuttonClicked);
         this.bag.addEventListener(MouseEvent.CLICK,this.bagbuttonClicked);
         this.device.addEventListener(MouseEvent.CLICK,this.devicebuttonClicked);
         this.tape.addEventListener(MouseEvent.CLICK,this.tapebuttonClicked);
         this.note.addEventListener(MouseEvent.CLICK,this.notebuttonClicked);
      }
      
      function frame1393() : *
      {
         stop();
         this.self = this;
         this["leftTarget"] = "note";
         this["rightTarget"] = "bag";
         this["failname"] = "cellphone_badge";
         if(!this.left.hasEventListener(MouseEvent.CLICK))
         {
            Helpers.CreateButton(this.left,true,false);
            Helpers.CreateButton(this.right,true,false);
            Helpers.CreateButton(this.present,true,false);
            Helpers.CreateButton(this.back,true,false);
            this.left.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop(self["leftTarget"]);
            });
            this.right.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop(self["rightTarget"]);
            });
            this.present.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               if(self["failname"])
               {
                  gotoAndPlay("efail");
               }
               else
               {
                  gotoAndPlay("ESuccess");
               }
            });
            this.back.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop("Evidence");
            });
         }
      }
      
      function frame1399() : *
      {
         stop();
         this.self = this;
         this["leftTarget"] = "badge";
         this["rightTarget"] = "photo";
         this["failname"] = null;
         if(!this.left.hasEventListener(MouseEvent.CLICK))
         {
            Helpers.CreateButton(this.left,true,false);
            Helpers.CreateButton(this.right,true,false);
            Helpers.CreateButton(this.present,true,false);
            Helpers.CreateButton(this.back,true,false);
            this.left.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop(self["leftTarget"]);
            });
            this.right.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop(self["rightTarget"]);
            });
            this.present.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               if(self["failname"])
               {
                  gotoAndPlay("efail");
               }
               else
               {
                  gotoAndPlay("ESuccess");
               }
            });
            this.back.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop("Evidence");
            });
         }
      }
      
      function frame1404() : *
      {
         stop();
         this.self = this;
         this["leftTarget"] = "bag";
         this["rightTarget"] = "device";
         this["failname"] = "cellphone_badge";
         if(!this.left.hasEventListener(MouseEvent.CLICK))
         {
            Helpers.CreateButton(this.left,true,false);
            Helpers.CreateButton(this.right,true,false);
            Helpers.CreateButton(this.present,true,false);
            Helpers.CreateButton(this.back,true,false);
            this.left.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop(self["leftTarget"]);
            });
            this.right.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop(self["rightTarget"]);
            });
            this.present.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               if(self["failname"])
               {
                  gotoAndPlay("efail");
               }
               else
               {
                  gotoAndPlay("ESuccess");
               }
            });
            this.back.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop("Evidence");
            });
         }
      }
      
      function frame1410() : *
      {
         stop();
         this.self = this;
         this["leftTarget"] = "photo";
         this["rightTarget"] = "tape";
         this["failname"] = "cellphone_badge";
         if(!this.left.hasEventListener(MouseEvent.CLICK))
         {
            Helpers.CreateButton(this.left,true,false);
            Helpers.CreateButton(this.right,true,false);
            Helpers.CreateButton(this.present,true,false);
            Helpers.CreateButton(this.back,true,false);
            this.left.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop(self["leftTarget"]);
            });
            this.right.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop(self["rightTarget"]);
            });
            this.present.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               if(self["failname"])
               {
                  gotoAndPlay("efail");
               }
               else
               {
                  gotoAndPlay("ESuccess");
               }
            });
            this.back.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop("Evidence");
            });
         }
      }
      
      function frame1416() : *
      {
         stop();
         this.self = this;
         this["leftTarget"] = "device";
         this["rightTarget"] = "note";
         this["failname"] = "cellphone_badge";
         if(!this.left.hasEventListener(MouseEvent.CLICK))
         {
            Helpers.CreateButton(this.left,true,false);
            Helpers.CreateButton(this.right,true,false);
            Helpers.CreateButton(this.present,true,false);
            Helpers.CreateButton(this.back,true,false);
            this.left.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop(self["leftTarget"]);
            });
            this.right.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop(self["rightTarget"]);
            });
            this.present.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               if(self["failname"])
               {
                  gotoAndPlay("efail");
               }
               else
               {
                  gotoAndPlay("ESuccess");
               }
            });
            this.back.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop("Evidence");
            });
         }
      }
      
      function frame1421() : *
      {
         stop();
         this.self = this;
         this["leftTarget"] = "tape";
         this["rightTarget"] = "badge";
         this["failname"] = "cellphone_badge";
         if(!this.left.hasEventListener(MouseEvent.CLICK))
         {
            Helpers.CreateButton(this.left,true,false);
            Helpers.CreateButton(this.right,true,false);
            Helpers.CreateButton(this.present,true,false);
            Helpers.CreateButton(this.back,true,false);
            this.left.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop(self["leftTarget"]);
            });
            this.right.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop(self["rightTarget"]);
            });
            this.present.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               if(self["failname"])
               {
                  gotoAndPlay("efail");
               }
               else
               {
                  gotoAndPlay("ESuccess");
               }
            });
            this.back.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
            {
               gotoAndStop("Evidence");
            });
         }
      }
      
      function frame1429() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_takethat");
         }
      }
      
      function frame1456() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame1494() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_jud_whatthis");
         }
      }
      
      function frame1535() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame1550() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_itsevidence");
         }
      }
      
      function frame1576() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame1613() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_jud_howdoesthisprove");
         }
      }
      
      function frame1697() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame1743() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_welli");
         }
      }
      
      function frame1769() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame1785() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_justkidding");
         }
      }
      
      function frame1817() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame1833() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_jud_notimeforjokes");
         }
      }
      
      function frame1873() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame1882() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_jud_noreasontoprolong");
         }
      }
      
      function frame1950() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame1955() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame1964() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_jud_ifinddefendant");
         }
      }
      
      function frame2034() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame2042() : *
      {
         EtPMain.instance.ShowFail("etp_cellphone","Evidence","etp_cellphone");
         stop();
      }
      
      function frame2049() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_takethat");
         }
      }
      
      function frame2075() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame2105() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_jud_isthatbag");
         }
      }
      
      function frame2166() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame2189() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_onethingbother");
         }
      }
      
      function frame2253() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame2258() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_ifdefendatwashid");
         }
      }
      
      function frame2330() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame2355() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_howtieknot");
         }
      }
      
      function frame2424() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame2443() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_prose_hwaaa");
         }
      }
      
      function frame2460() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame2478() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_ifheinsdieimpossible");
         }
      }
      
      function frame2586() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame2603() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_jud_howdidhedo");
         }
      }
      
      function frame2649() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame2666() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_simple");
         }
      }
      
      function frame2692() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame2714() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_didnt");
         }
      }
      
      function frame2738() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame2745() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_prose_whatusay");
         }
      }
      
      function frame2815() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame2841() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_imsaying");
         }
      }
      
      function frame2904() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame2926() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_hestuffed");
         }
      }
      
      function frame2957() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame2967() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_bythiswitness");
         }
      }
      
      function frame3007() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame3030() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_witn_what");
         }
      }
      
      function frame3049() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame3060() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_doctorsanal");
         }
      }
      
      function frame3175() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame3183() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_whilebagunconscious");
         }
      }
      
      function frame3249() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame3278() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pros_thisabsurd");
         }
      }
      
      function frame3332() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame3356() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_witnessdisposebody");
         }
      }
      
      function frame3423() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame3429() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_heknewdriveby");
         }
      }
      
      function frame3536() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame3547() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_convinced");
         }
      }
      
      function frame3666() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame3680() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_jud_buthwy");
         }
      }
      
      function frame3728() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame3740() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_whytodispose");
         }
      }
      
      function frame3804() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame3813() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_millionsofbags");
         }
      }
      
      function frame3942() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame3951() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_butunfortunately");
         }
      }
      
      function frame4009() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame4019() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_victimwokeup");
         }
      }
      
      function frame4101() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame4109() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_arrestedonspot");
         }
      }
      
      function frame4182() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame4191() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_pw_butitcomebacktohaunt");
         }
      }
      
      function frame4249() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame4272() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_witn_mumble");
         }
      }
      
      function frame4330() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame4334() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_witn_cantbehappen");
         }
      }
      
      function frame4426() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame4514() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_jud_interestingtrial");
         }
      }
      
      function frame4604() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame4615() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_jud_readytodeliver");
         }
      }
      
      function frame4678() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame4697() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("cellphone_jud_ifinddefendant");
         }
      }
      
      function frame4764() : *
      {
         if(EtPMain.instance)
         {
            EtPMain.instance.DriveSub("");
         }
      }
      
      function frame5115() : *
      {
         EtPMain.instance.SetPath("b",3);
         stop();
      }
   }
}
