package com.ax3.fishao
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.locations.base._24fc30cfc3c855ea21a231e8;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import flash.desktop.NativeProcess;
   import flash.desktop.NativeProcessStartupInfo;
   import flash.events.IOErrorEvent;
   import flash.filesystem.File;
   import flash.system.Capabilities;
   import flash.utils.setInterval;
   
   public class _7727c4bdfd164b09013de058
   {
      
      private static var _dea52e03637e6e00ee3ff71d:NativeProcess;
      
      private static var _d38cf1053f8408db32313468:String;
      
      public function _7727c4bdfd164b09013de058()
      {
         super();
      }
      
      public static function start() : void
      {
         var exe:File;
         var info:NativeProcessStartupInfo = null;
         if(!NativeProcess.isSupported)
         {
            return;
         }
         exe = File.applicationDirectory.resolvePath(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劻劵創剘勐初勛剒剤勘勗刟刴勽刾勒労別勀勻勢剧効勹剛刐勾削勉剺刻刄剠刿勮剣劝劚","助剚刃创创刞勫前勁剀切勦勆努勬剶") + (Capabilities.os.indexOf(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႺჺႻပႏါჼႮႂတეႚ၌ၑဇჩဂტჵဗႽဓ","ၑၩဗჵလႰကჲგჱးႳၟႛၝყ")) == (0x2139470F ^ 0x78E44F59 ^ -1153723291 ^ -488203213) ? _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掄捑掤挘掵掟挖捹挕捂捆掐掖接挅揻","捇捐揝揇揿捾挞挤捘掅掃揞提掙揂捅") : ""));
         if(!exe.exists)
         {
            return;
         }
         info = new NativeProcessStartupInfo();
         info.executable = exe;
         try
         {
            _dea52e03637e6e00ee3ff71d = new NativeProcess();
            _dea52e03637e6e00ee3ff71d.addEventListener(IOErrorEvent.STANDARD_INPUT_IO_ERROR,stop);
            _dea52e03637e6e00ee3ff71d.addEventListener(IOErrorEvent.STANDARD_OUTPUT_IO_ERROR,stop);
            _dea52e03637e6e00ee3ff71d.addEventListener(IOErrorEvent.STANDARD_ERROR_IO_ERROR,stop);
            _dea52e03637e6e00ee3ff71d.start(info);
         }
         catch(e:Error)
         {
            _dea52e03637e6e00ee3ff71d = null;
            return;
         }
         _8f8c0c6dd23e9a3c4eb59afd();
         setInterval(_8f8c0c6dd23e9a3c4eb59afd,-448767082 ^ -182013838 ^ 0x2C1DE0B9 ^ 0x3C7B31C5);
      }
      
      private static function _8f8c0c6dd23e9a3c4eb59afd() : void
      {
         var details:String = null;
         if(_dea52e03637e6e00ee3ff71d == null || !_dea52e03637e6e00ee3ff71d.running)
         {
            return;
         }
         try
         {
            details = _bab03eb53bc4f53f6a68100c();
            if(details != _d38cf1053f8408db32313468)
            {
               _d38cf1053f8408db32313468 = details;
               _dea52e03637e6e00ee3ff71d.standardInput.writeUTFBytes(JSON.stringify({(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刑勛剹刍刨剀勃刅則勑剕办刼分劍劸削列勶勠則剣","剖劻劢勯効勯刄剉勍剘勄剳刄劈劣剩")):details}) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劜利剽務刨劙勿刋務勉","剃剂劽剡劔剶勬劳勮勨勣勢刘剼勶動"));
            }
         }
         catch(e:Error)
         {
            stop();
         }
      }
      
      private static function stop(param1:IOErrorEvent = null) : void
      {
         var _loc2_:int = 0x51B7FD6C ^ 0x4F369C9C ^ -66148775 ^ -1407128985;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x2C4DC98E ^ 0x08ECC06D ^ 0x1ABCB582 ^ 0x70B291AC))
            {
               case 0:
                  _dea52e03637e6e00ee3ff71d.exit(true);
                  _loc2_ = 0x25141118 ^ -1267194031 ^ 0x2427701C ^ -68916327;
                  break;
               case 1:
                  _dea52e03637e6e00ee3ff71d = null;
                  _loc2_ = 0x51FA8083 ^ 0x275E6A69 ^ 0x532440B2 ^ 0x6B2F8797;
                  break;
               case 2:
                  return;
               case 3:
                  if(_dea52e03637e6e00ee3ff71d != null)
                  {
                     _loc2_ = -1481079234 ^ -1299880377 ^ 0x47900B6B ^ 0x1C02C6DB;
                  }
                  else
                  {
                     _loc2_ = 0x51FAEE54 ^ 0x276E3CB9 ^ 0x264319A3 ^ 0x1E78E681;
                  }
                  break;
               case 4:
                  if(_dea52e03637e6e00ee3ff71d.running)
                  {
                     _loc2_ = 0x659EA10E ^ 0x01D297E5 ^ -2027534006 ^ -1379577236;
                  }
                  else
                  {
                     _loc2_ = 0x0DFCB2CE ^ -1090202815 ^ -174749496 ^ 0x09C2C48B;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private static function _bab03eb53bc4f53f6a68100c() : String
      {
         var _loc1_:_24fc30cfc3c855ea21a231e8 = null;
         var _loc2_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc2_ != null && _loc2_.locationModel != null)
         {
            _loc1_ = _loc2_.locationModel.locationConfig;
         }
         if(_loc1_ == null)
         {
            if(GameSwf.worldMap != null && GameSwf.worldMap.parent != null)
            {
               return _95da7f1147c669197db81295._8f4866de82b7339154180ecb("副勼办剒勊剡动勏勐剨剏勓剌剎剕剨勤剩勳劥则劀刅勞劉刼剹勚剧勱剓刱劕勯勋勶刧剑刂刮勧剥勲剮刢刁勜劆勈剶割刿剨勦务加","劅勇勰割制勮募利利剴創刼勨剠劮動");
            }
            return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჎ၗ჻ၢდ်ႄတ၅ၫငႍႪၞႍფႫုჄჯၫၣ၂ჾၛჼႌ်ၿ჊ၮႳ","ဆဗႅცၥႹ჈უိၶ჆႑ငႷသဟ");
         }
         if(_loc1_.id >= (0x761D95CF ^ 0x606CFDA7 ^ 0x223BB63C ^ 0x344ADE9D) && _loc1_.id <= (0x077E27B8 ^ 0x2CCA473B ^ -2126438258 ^ -1426767578))
         {
            return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ღႁဦ႘ჯၜဗယფႶၗმჹႾဿႛჽႹდ၄႔ႶၸႃჁ်ჃၟဏႯႭၙၿიႎၯႾဧ၉Ⴐჸၡံၸჾႂტႃဇနဍဏლგ","ჹ။႕ၚძ႒ႃၙနဠჾჶႭဏ္ႆ");
         }
         switch(_loc1_.id)
         {
            case _24fc30cfc3c855ea21a231e8.PRIVATE_HOUSE.id:
               §§push(0x12795F73 ^ -1616252471 ^ 0x5A4A7368 ^ -677716526);
               break;
            case _24fc30cfc3c855ea21a231e8.FRIENDS_PRIVATE_HOUSE.id:
               §§push(-408466476 ^ 0x284DE9A4 ^ 0x4D3D12AD ^ -2099793700);
               break;
            case _24fc30cfc3c855ea21a231e8.SUBLOCATION_1_DECORMARKET.id:
               §§push(-1742375202 ^ -1255131732 ^ 0x32DB4407 ^ 0x1FCE0777);
               break;
            default:
               §§push(0x55716D03 ^ 0x5A8D8064 ^ -722181117 ^ -620197529);
         }
         switch(§§pop())
         {
            case 0:
               return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႃ჆ဍ၆ျဌထၯჃჰဝ჊၊Ⴈთ႖ှშႉბჄ၄Ⴓ჻ჲၟ၊ვၶ၂႘႓ჶၪိႴႴၣ႘ဝ","ၥၑႷႣျႯၾၴႿဇႽစ჋ჼქჺ");
            case 1:
               return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႄგဆ၇ိဒჼဠှႈ၇ၝှႶဉဧ჻჎ဃჱ႗ႠხယႬစွღဃႆၪ႘ၐၪသႷၯႏအဂှဏ","ტည၅ၙၱოშဓს႕ၠ჆ဲဗီဨ");
            case 2:
               return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဌ၄ၘၽზ჋ეဪ၁ဃဢၪწჳ႔Ⴙ჏ႂ်ვႺဿ၎၅ႊၪၨღ်ါမၟဥၓჶဘჹိ","ჇလဣဈჇ჋ဝဟၬျႩჂႢဝၜ႕");
            default:
               return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႑ၨႎ႘ჵგၴ႗ဉႳ့ႍვပ","ჴဗႆტოჀိႷၳ႒ႂၗჇံးႱ") + _837ecda216ad6c3776de3090(_loc1_.filename);
         }
      }
      
      private static function _837ecda216ad6c3776de3090(param1:String) : String
      {
         var _loc2_:Array = param1.replace(new RegExp(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჭႏိႃლ၁ဨီဳၣၶၑႪၭၜ၃ႊခးဉဴၐცပႆႻძჱႂႏ၄ႸဂႤႵცဌ၀ံဢၺႭၟၕ၏ဨဘ႘ჶჺၗ႑႓ဣၒႝ","ჅႠფခၸ၊ှႚဏႳႏჇွოႃႁ"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捅揉揍掎捊掚挼捆捝揌","掘捦揗捺揌捛掾揧掵捏插捧揨捙捩捀")),"").split(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၡႠ၍ူ჉Ⴘჵ။ါ၈","შႈဍႣဨႶၾჰုဿံၠႏჾၖႤ"));
         var _loc3_:int = -373603798 ^ 0x0C9A0B7C ^ -928252589 ^ 0x2D8AB405;
         while(_loc3_ < _loc2_.length)
         {
            _loc2_[_loc3_] = String(_loc2_[_loc3_]).charAt(-233996162 ^ -2096293399 ^ -1394522627 ^ -572400534).toUpperCase() + String(_loc2_[_loc3_]).substr(0x3AD7C6FF ^ 0x7303F96C ^ 0x7A4F6023 ^ 0x339B5FB1);
            _loc3_++;
         }
         return _loc2_.join(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刚列剘勊剐刍劘劸剼刁","刚劕刄刔劅刅劸利勈勽勅刘勊剌勱制"));
      }
   }
}

