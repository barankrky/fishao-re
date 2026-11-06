package com.ax3.fishao.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.brokenfunction.json.decodeJson;
   import com.junkbyte.console.Cc;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class _7c016a43d731dd4f2bb277fe
   {
      
      private var _b80b62f7119e99b38712e94e:Dictionary = new Dictionary();
      
      protected var _all:Vector.<Object> = new Vector.<Object>();
      
      private var _4d5d4c2cff64a2b636560efb:Class;
      
      public function _7c016a43d731dd4f2bb277fe(param1:String, param2:Class = null)
      {
         super();
         this._4d5d4c2cff64a2b636560efb = param2;
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest = new URLRequest(param1);
         _loc3_.addEventListener(Event.COMPLETE,this._c6264a1a5442a5237b06f4b2);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this._5223c0c2395c441f87f47246);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         _loc3_.load(_loc4_);
         Cc.ch(GameSwf.LOADING_CHANNEL,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捕捑挸提捣揧挨挵挟挽挥挝掠捪捗挦挠捖揃捆挻捭掿捰","措掟揇掟掽捸掛揃掋揓挲捿挬振挷捰") + _loc4_.url);
      }
      
      public function get(param1:int) : Object
      {
         var _loc2_:int = -1651553791 ^ 0x41D06D2C ^ 0x14E6E6B6 ^ 0x06634455;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1957317364 ^ 0x17C4920F ^ 0x6E58CED7 ^ 0x3C136C18))
            {
               case 0:
                  return null;
               case 1:
                  return this._b80b62f7119e99b38712e94e[param1];
               case 2:
                  if(this._b80b62f7119e99b38712e94e.hasOwnProperty(String(param1)))
                  {
                     _loc2_ = -1359978079 ^ -836550818 ^ 0x0312B7A9 ^ -1390711653;
                  }
                  else
                  {
                     _loc2_ = 0x46EC50FE ^ 0x1A5B462F ^ -1565057726 ^ 0x30DA8E5F;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function getProperty(param1:int, param2:String, param3:Object = null) : Object
      {
         var _loc4_:Object = this.get(param1);
         if(_loc4_ != null && _loc4_.hasOwnProperty(param2))
         {
            return _loc4_[param2];
         }
         return param3;
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         var _loc2_:URLLoader = URLLoader(param1.target);
         this._ad8c9e6e2b2bafda9d2b5235(_loc2_);
         Cc.error(this,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刋勢勦剞刨剂勿募別动判勢則刬勴劑勞剸勍刀劣劋勢刍劺分劕刀加剣利刱剞则剄勋制劖勁剔","勺勺劀勒剞刪募劀務剸刬前剛剿剷勝"),param1.text);
      }
      
      private function _5223c0c2395c441f87f47246(param1:IOErrorEvent) : void
      {
         var _loc2_:URLLoader = URLLoader(param1.target);
         this._ad8c9e6e2b2bafda9d2b5235(_loc2_);
         Cc.error(this,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႌၦၺთၫဦ၆ဗႦသჩბ჏Ⴒွၷူ၊შჵჱეჾႜၢၡႰဌ","႐ၨၧ႙ၤႿဃსဓၾၤ႐ჲဉჹႾ"),param1.text);
      }
      
      private function _c6264a1a5442a5237b06f4b2(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = -1989061875 ^ 0x3752D06E ^ -2028406767 ^ 0x393B7B72;
         var _loc4_:Object = null;
         var _loc5_:URLLoader = URLLoader(param1.target);
         this._ad8c9e6e2b2bafda9d2b5235(_loc5_);
         var _loc6_:Object = decodeJson(_loc5_.data);
         if(_loc6_.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掋掋掂授掎挫挝掔捻捌揭捳挅换挤捥","握掆挲掇捈揥捘挸挂挼援揘掸揆掬掺")) && _loc6_.data is Array)
         {
            _loc2_ = _loc6_.data;
            _loc3_ = -770769684 ^ 0x35C495C8 ^ 0x1C78DE4F ^ -72173717;
            while(_loc3_ < _loc2_.length)
            {
               if(_loc2_[_loc3_].hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揱描揾掳掬振捙揫揺捊捊挎","掠揷捕插捣揻挃掋掳掑换挊挋提挾握")))
               {
                  if(this._4d5d4c2cff64a2b636560efb != null)
                  {
                     _loc4_ = new this._4d5d4c2cff64a2b636560efb();
                     (_loc4_ as _d77ebfef0f9e8ea16b924015)._2dd278b198781935b9d9b9ee(_loc2_[_loc3_]);
                  }
                  else
                  {
                     _loc4_ = _loc2_[_loc3_];
                  }
                  this._b80b62f7119e99b38712e94e[_loc2_[_loc3_][_95da7f1147c669197db81295._8f4866de82b7339154180ecb("创勏劕劓勓刮刚劋剠募劮勃","券勘刳劆劶券劍勹劏募劐剶刞勐劎创")]] = _loc4_;
                  this._all.push(_loc4_);
               }
               else
               {
                  Cc.warn(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၰနယၝၜတၩျႯ჏ၛჟ႖ლႄှၟိါ၏အ၊႘ၹბႨႾၚႀდ၉ိၖသႨဿၘზၷ჌ზၖ၏ံၹါဗဣႁမႡႀၐၞႀჅႬ჆ႌ႞ႣႯႷၘეြၡჶၺႭၕဳ၃ဝဃ၇Ⴘႉ","ဝ၌ჷႢၛဉქႪႶႿဥჇ႓ဇ။჎"),JSON.stringify(_loc2_[_loc3_]));
               }
               _loc3_++;
            }
         }
         this.sort();
      }
      
      protected function sort() : void
      {
      }
      
      private function _ad8c9e6e2b2bafda9d2b5235(param1:URLLoader) : void
      {
         param1.addEventListener(Event.COMPLETE,this._c6264a1a5442a5237b06f4b2);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this._5223c0c2395c441f87f47246);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
      }
      
      public function toString() : String
      {
         return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挪挫捸挃捁掄揷捍挴捁挎挖挊捬揙揻掯捋揢揗掄掕捵捸掵掂挙捨提掇捏据挩捤揪揝捝掐掃推挶挧捴揰揚捔掾挈","掆捃掆挖挀掅掜掟揘挌捐掾挫捁握挲") + (this._b80b62f7119e99b38712e94e != null ? JSON.stringify(this._b80b62f7119e99b38712e94e) : _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挍捶掑掩揅揧换挓挰揔掉挭捫掅捘揿","捝捂揉捶掆揈捉掤捞採掫捕揶挛掳掮")) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捇捔揅掤掹揎接插挐掅掞揀","捸揺捵捻捒揆挓挿挛挏挼揾控挿揝挊");
      }
      
      public function getAll() : Vector.<Object>
      {
         return this._all;
      }
   }
}

