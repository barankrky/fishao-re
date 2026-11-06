package com.ax3.signals
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   
   public class Slot implements ISlot
   {
      
      protected var _signal:IOnceSignal;
      
      protected var _enabled:Boolean = true;
      
      protected var _listener:Function;
      
      protected var _once:Boolean = false;
      
      protected var _priority:int = 0;
      
      protected var _params:Array;
      
      public function Slot(param1:Function, param2:IOnceSignal, param3:Boolean = false, param4:int = 0)
      {
         super();
         this._listener = param1;
         this._once = param3;
         this._signal = param2;
         this._priority = param4;
         this.verifyListener(param1);
      }
      
      public function execute0() : void
      {
         if(!this._enabled)
         {
            return;
         }
         if(this._once)
         {
            this.remove();
         }
         if(Boolean(this._params) && Boolean(this._params.length))
         {
            this._listener.apply(null,this._params);
            return;
         }
         this._listener();
      }
      
      public function execute1(param1:Object) : void
      {
         if(!this._enabled)
         {
            return;
         }
         if(this._once)
         {
            this.remove();
         }
         if(Boolean(this._params) && Boolean(this._params.length))
         {
            this._listener.apply(null,[param1].concat(this._params));
            return;
         }
         this._listener(param1);
      }
      
      public function execute(param1:Array) : void
      {
         if(!this._enabled)
         {
            return;
         }
         if(this._once)
         {
            this.remove();
         }
         if(Boolean(this._params) && Boolean(this._params.length))
         {
            param1 = param1.concat(this._params);
         }
         var _loc2_:int = int(param1.length);
         if(_loc2_ == (-1774070354 ^ -1294491613 ^ -1638226444 ^ -1160982407))
         {
            this._listener();
         }
         else if(_loc2_ == (0x2C48E149 ^ -763914138 ^ 0x523EF2C0 ^ -1409184786))
         {
            this._listener(param1[-231106228 ^ -1957888610 ^ 0x29AABC59 ^ 0x50DFD88B]);
         }
         else if(_loc2_ == (0x51CAF30E ^ -1398096499 ^ 0x17DF29F6 ^ -356554889))
         {
            this._listener(param1[-235384143 ^ -1122813550 ^ -1884558446 ^ -1019182927],param1[0x35672392 ^ 0x317F7F9F ^ -2138727664 ^ -2070034660]);
         }
         else if(_loc2_ == (-1498395243 ^ -1696818530 ^ -1190574683 ^ -2056940883))
         {
            this._listener(param1[-1972430991 ^ -1986113528 ^ 0x16EAA569 ^ 0x151BE210],param1[-590637217 ^ 0x0F537322 ^ 0x2AAF1CF1 ^ -113772403],param1[-1778310210 ^ -1808501611 ^ -382816776 ^ -350487855]);
         }
         else
         {
            this._listener.apply(null,param1);
         }
      }
      
      public function get listener() : Function
      {
         return this._listener;
      }
      
      public function set listener(param1:Function) : void
      {
         var _loc2_:int = 0x7E8EE9DD ^ 0x3CCAE468 ^ 0x06ADECBB ^ -100239759;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1711851515 ^ -1853178851 ^ 0x3C98B7D5 ^ -1979013968))
            {
               case 0:
                  throw new ArgumentError(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揲捉挔揾揷揉掦捡挩援排捎掓挶捵授捘揂掩捲挋掋捙捚挑控揜捕捱捻揩捁捨挺揈揱揍挫挂揊揻捀揜掭挺挈捩捭挨掕捉捽挂揺捪揽换掞捓捼揦掱挆捹掘捘掀掕捣捽据指捖掠揉揸揁揀持掬掜掶挘掤挑挑揩掮掳捖捙掖掂按排揧挀挞挀揗挶掴揝挮插捝挵捐捈掛揰挷措挗描掅捝揚掳揑揦控挆挏挼揌捅掍捹持掁捩捉排掝指捛掓挟捎揫按据捖揯捑","掾捓揎捿掕挑挂掆捩揠掼揃捻掙掋捻"));
               case 1:
                  this.verifyListener(param1);
                  this._listener = param1;
                  return;
               case 2:
                  if(null == param1)
                  {
                     _loc2_ = -835303217 ^ -728763854 ^ -996105241 ^ 0x60F68E67;
                  }
                  else
                  {
                     _loc2_ = -436211850 ^ 0x4D557FB3 ^ -1467205081 ^ -1094107746;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get once() : Boolean
      {
         return this._once;
      }
      
      public function get priority() : int
      {
         return this._priority;
      }
      
      public function toString() : String
      {
         return _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劝勠刴刭刳剮勪剸剧勳剷労刅剞劝刎剓劋刜剘前勝别劦刵勸刓刼劀勯劳剿剪勈刧刎劵勍劄剪","刓勖剮力劀动刑劯刺勤分刟刻劵办剠") + this._listener + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("換掂挥捡推捇授揋掣捯挭捵挊插挹提揝掊挒掩探捩挼捺","授挅挖援掯捃揮捛挖授捴揠描揾揹挈") + this._once + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႣჿဆႣლჳႭჲ႗ႌ၏ႱႯჄႈჅტႏၬဥჟႆႱკჀႈးၵႃლႨ჏","ႰႠာႵႏ႔ႿဧჅ၇႖ဤၕဓၶႁ") + this._priority + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劼助剦刣务劣刣刖剀删効刳刻勮勥劒剧勿劷剰割勖勠剋劁則剂刷劈剖","勛刔切剢刀剩勁刏剗剧創劙劚刖剋势") + this._enabled + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劏劐刨剸则募則刕剑勴","勉刓切剽劝剨勿动勊刭刷勝劒刵勿刦");
      }
      
      public function get enabled() : Boolean
      {
         return this._enabled;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this._enabled = param1;
      }
      
      public function get params() : Array
      {
         return this._params;
      }
      
      public function set params(param1:Array) : void
      {
         this._params = param1;
      }
      
      public function remove() : void
      {
         this._signal.remove(this._listener);
      }
      
      protected function verifyListener(param1:Function) : void
      {
         var _loc2_:int = 0x17E9B4F1 ^ -1493757016 ^ 0x37B4A3D2 ^ -14248995;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x77F03430 ^ -1976451565 ^ -741635713 ^ 0x5786940A))
            {
               case 0:
                  if(null == param1)
                  {
                     _loc2_ = 0x6EE9363C ^ -1548759782 ^ -556163629 ^ 0x6A13F1A1;
                  }
                  else
                  {
                     _loc2_ = 0x38478240 ^ 0x352BFC64 ^ -1867812834 ^ -464807576;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  throw new ArgumentError(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捽掉揫捃探捶掸指捣掫捙掚挡挙挫提揉提揣挀揫捘掺掯换捹揲挏掝挻掹捃揨揳掻掏挚捯挹掖损挗揶掊挏捖捇揬捕掀挼挹捖揙","掁捗挔挟捰揄揽捭揅挙提授捲捠掿捷"));
               case 3:
                  throw new Error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勲勈刣劮刘劙勹刚剠刽刅勰勹勛勰勫剄劙劜刌勉剶分剗剤劓勱劄刋劍剋功剻勁劙剃券剅劗勓勒创勉剻劗勘勼刍力剌剌刞务勽剐勾剘劻劯勦劫刏勎勳刳刨勋劁勔刕務剓刣勚劊剘刮刎勈剏剡剓剧勗刵勤剻勑劃劸劥勷剞刂劷劸务勪剭刉劀刄","剠勳剈剈刘分勲剼刱剎别勻刾剤劬勈"));
               case 4:
                  if(null == this._signal)
                  {
                     _loc2_ = -1245135117 ^ -35262952 ^ 0x185AF70E ^ 0x29FB30B0;
                  }
                  else
                  {
                     _loc2_ = -1870968851 ^ -344942394 ^ -777545841 ^ -752820237;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

