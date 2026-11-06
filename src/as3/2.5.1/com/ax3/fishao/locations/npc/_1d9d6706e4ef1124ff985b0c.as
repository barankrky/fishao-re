package com.ax3.fishao.locations.npc
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations._3e7dee0195ecd6b652b730f1;
   import com.ax3.fishao.locations.chars._8b5edf1c1de2751d1bc6fca0;
   import com.ax3.fishao.locations.npc.base._95e09934be04b5ca92831e4b;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.locations.privateHouse.model._2713ec585daceb8ad62e2797;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   
   public class _1d9d6706e4ef1124ff985b0c extends _ba120ae720a391732e866217
   {
      
      private var _f5a61d5501830c55166a6ead:_8b5edf1c1de2751d1bc6fca0;
      
      public function _1d9d6706e4ef1124ff985b0c(param1:_810c4ade948afb64e9c7ee25, param2:_3e7dee0195ecd6b652b730f1)
      {
         super(param1,param2);
      }
      
      override public function get roomCurrent() : String
      {
         return _2713ec585daceb8ad62e2797.EPP_GARDEN;
      }
      
      override public function _418df8970de8f29cbeee5a0f(param1:String, param2:int) : void
      {
         if(param1 != _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挆挼捪掼挚捂揧探捧掷掆揙挧捇揚捙掯捠挣揮挩掝掅掅挲挰掰掠掤挃掸掃捻挨揼揽挊捦揦授振挧揨挒捸捗挛揕","揵揑掎掅掯捞挮掂捩掯挵挷挾控揄掁") && param1 != _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("措掜挿掁掑捐揁捤挡掵掇捕掮掩挣挾捍掫捊捔挒捦捇挴揦捖挴排揯揉掛掫換捯捣挄损揵挴揍揘挟揘挗揠挌揈掝持挎挾揭掙挷捩掬揷捈掚揢捐捐捙揜","揗捨挫捓掊掘捡捠捰揊捉捽捍捘掇控"))
         {
            super._418df8970de8f29cbeee5a0f(param1,param2);
         }
         else
         {
            this._f5a61d5501830c55166a6ead = moveStrategy;
            moveStrategy = _freezeMovementStrategy;
            _37496d81243d975a8f2daa70();
         }
      }
      
      public function _616dc7206bab3b3a6c1ec937() : void
      {
         var _loc1_:int = 0x4CD28F73 ^ -1073066108 ^ 0x34463368 ^ -2034835257;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1346880144 ^ -1496966917 ^ -1384236235 ^ -1708651034))
            {
               case 0:
                  moveStrategy = this._f5a61d5501830c55166a6ead;
                  if(onStartTalk != null)
                  {
                     _loc1_ = 0x66B90CE8 ^ -141507606 ^ 0x75FEB190 ^ -620794421;
                  }
                  else
                  {
                     _loc1_ = 0x601E3A1F ^ -1244056344 ^ -2141604753 ^ 0x6BB6A9C2;
                  }
                  break;
               case 1:
                  onStartTalk(this);
                  _loc1_ = -1962141283 ^ -568273103 ^ -1575095915 ^ -921097117;
                  break;
               case 2:
                  this._418df8970de8f29cbeee5a0f(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捥挏捇挍掂捊挬掌揶捛採掩揄挤探挳掺掉掲挴挾掫揝挙掞持掷握揫掜挚接捡挏掦掟捝捃揎捸揕揮揫挟捨掐按揳捙揬掷换挛揘揙挠捲捇","掩挓掮揚挡揆捩掦捀捸掅揄挈揘揎捯")),-1032608988 ^ 0x4543E5A6 ^ 0x4576D9C5 ^ -1035559097);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _6c5474d9cc6afed3662f0c94() : void
      {
         moveStrategy = this._f5a61d5501830c55166a6ead;
         _17d1307788aadfaf6218377c();
         this._418df8970de8f29cbeee5a0f(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჆Ⴌნ။Ⴎႛဢငႉჭ჏ႂႜါ჎ြႃၔႦၕႯၫသცნႯႨႎှၺၾၱၮვွႨაဧၱၳၥ့ခ္ႏ႞႐္ღႿႩჀ","၁၀ွအ့႘းლႸှဠნႎႽၶၔ")),0x5602B689 ^ 0x17DA38A5 ^ 0x72671FF7 ^ 0x33BF91DB);
      }
      
      public function _ff8800a8e4fa5f743ba4f0f7() : void
      {
         moveStrategy = this._f5a61d5501830c55166a6ead;
         _17d1307788aadfaf6218377c();
         _dfa25706e58a240c1e33e5c6.locationExtension._abd393c870e6d7f9e4acc6dd(this.npcName,position,0x5EEF0851 ^ -2096237213 ^ 0x04611DBE ^ -645668724,_95e09934be04b5ca92831e4b.ENA_NO,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb());
      }
      
      public function _cadbdb6713825aaec171f902(param1:Number, param2:int) : void
      {
         var _loc3_:String = null;
         var _loc4_:_cff30366d510ea862540bfef = app.fishDict.get(param1) as _cff30366d510ea862540bfef;
         switch(param2)
         {
            case 0x5F1B6B2B ^ 0x290B40CF ^ 0x104EA8CE ^ 0x665E832A:
               §§push(-2042497633 ^ 0x4BACEB19 ^ 0x38D0F035 ^ -180490573);
               break;
            case 0x07BEE563 ^ 0x1096B521 ^ 0x240D92A8 ^ 0x3325C2EB:
               §§push(-569635243 ^ -1340165873 ^ 0x282A9537 ^ 0x46382A6C);
               break;
            default:
               §§push(-1832957579 ^ -1437926199 ^ 0x01E0AFD9 ^ 0x39151A67);
         }
         switch(§§pop())
         {
            case 0:
               _loc3_ = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挍换挠捫掖挀挆掝掖揄揔揀捾採捋捁挫挊掔揄挅挿捲捹挳掁掵掂捵挋挄挨揨捺捵挪掱换捜提挋揜挝揹捈捼捥揸掜挢挢描挃挃","据掓捡捣捘揁掹挝揥挣揓捎掸揪探接"));
               break;
            case 1:
               _loc3_ = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劈劋刣刐力劇勴勎勩勮劋分剼勛剓剅効刵刏勏刹勆剨勜勗劝刄劻劯前刭切利刪劷剴剈劵劫勼勄刨劯勳劯勣剥勌勝務勆勼勰勷劉剴勰刾剋勉勹勫勻募勐勭剳勁","剹剪剭勍劏劄剺列勗制劤勾勿勶刓刄"));
         }
         _loc3_ = _loc3_.split(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挦掙挰挸捤挽掚捌挄挈揇挵挟揩揖捐捖掗捃掩揝按挗捡捖掋授挀","掾掙揿掹挔掩捔捚掄挹掌捷捑挰掼掹")).join(_loc4_.displayName);
         moveStrategy = this._f5a61d5501830c55166a6ead;
         onStartTalk(this);
         this._418df8970de8f29cbeee5a0f(_loc3_,0x0EFE567F ^ -239275920 ^ 0x6296E727 ^ -1647034072);
      }
   }
}

