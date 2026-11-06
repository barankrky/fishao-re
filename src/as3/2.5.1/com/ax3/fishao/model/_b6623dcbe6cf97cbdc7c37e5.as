package com.ax3.fishao.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.junkbyte.console.Cc;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class _b6623dcbe6cf97cbdc7c37e5
   {
      
      private var _a87e1f37c552ddaecda1557f:Vector.<_c0d0e24e1ed8eae578a7b0b2> = new Vector.<_c0d0e24e1ed8eae578a7b0b2>();
      
      private var _662f25cd670252a17f5a08df:String = "UN1";
      
      public function _b6623dcbe6cf97cbdc7c37e5(param1:String)
      {
         super();
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest(param1);
         _loc2_.addEventListener(Event.COMPLETE,this._c5c315c03a2e32401761f542);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this._baede0867f27f0737bdd1a45);
         _loc2_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         _loc2_.load(_loc3_);
         Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劲劙勱劅勤刔勱勱劃則劲劑剘剹劁劜刖刱剧剝刃劽勾剈勘劶勦勇利判剀劕剤劏刧務勅剛劻剟刣劚劮刅","劥勘剀勠勘刴労勑則剢劉剆劵务劼劈") + _loc3_.url);
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         var _loc2_:URLLoader = URLLoader(param1.target);
         this._27e7dfde797d44633568857b(_loc2_);
         Cc.error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၛၥၾႴယၖၩრဆၙლჂ႐႞ၟၜჲၹဆဟငႀდဈံ႔ၘဣ၁კႋဠဲ၂ၐႊညႀာჰဦႰაჟაეႃჟჸဴကჄလႺႂ၁ოႹ္သႸတဿဈ႐ဓႾ႗","ႪဇမႂႋသၚႾၬၺ၀ႡႭეဨ႖"),param1.text);
      }
      
      private function _baede0867f27f0737bdd1a45(param1:IOErrorEvent) : void
      {
         var _loc2_:URLLoader = URLLoader(param1.target);
         this._27e7dfde797d44633568857b(_loc2_);
         Cc.error(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挥掭捼挦揚揠掵掮揲掞挌掺揶挴揺挬揃揚掣掔挔探挦揧揥捕捷換掷握揃持按捨挈揕挋揪挓挐捧揱捆捪捖挾挍挲捶挦挛揎掚挛捖捦","揂提揊挃插揫挧措掍掋揓掰描掦捁揔"),param1.text);
      }
      
      private function _c5c315c03a2e32401761f542(param1:Event) : void
      {
         var _loc2_:_c0d0e24e1ed8eae578a7b0b2 = null;
         var _loc3_:Array = null;
         var _loc4_:int = -970029928 ^ -1322147114 ^ -143173139 ^ -2140635229;
         var _loc5_:URLLoader = URLLoader(param1.target);
         this._27e7dfde797d44633568857b(_loc5_);
         var _loc6_:Object = JSON.parse(_loc5_.data);
         if(_loc6_.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჶက჉Ⴒ၅ၛჂზჰ၃Ⴆမၢ်ဪჯ","ှံსၵူႮ၍လრဂჀ႞ဉၿဗႴ")) && _loc6_.data is Array)
         {
            _loc3_ = _loc6_.data;
            _loc4_ = -2080422196 ^ 0x15E33676 ^ -1404531719 ^ 0x3A54FB43;
            while(_loc4_ < _loc3_.length)
            {
               if(_loc3_[_loc4_].hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("指揺援揬捳捰掇掮掜捘捳掬","捠揞挨掔挛挥挻掳揗捺揱授援挿掠揙")))
               {
                  _loc2_ = new _c0d0e24e1ed8eae578a7b0b2(_loc3_[_loc4_]);
                  this._a87e1f37c552ddaecda1557f.push(_loc2_);
               }
               _loc4_++;
            }
         }
      }
      
      private function _27e7dfde797d44633568857b(param1:URLLoader) : void
      {
         param1.addEventListener(Event.COMPLETE,this._c5c315c03a2e32401761f542);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this._baede0867f27f0737bdd1a45);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
      }
      
      public function get countries() : Vector.<_c0d0e24e1ed8eae578a7b0b2>
      {
         return this._a87e1f37c552ddaecda1557f;
      }
      
      public function _b31895c8df36744f6beebecb(param1:String) : _c0d0e24e1ed8eae578a7b0b2
      {
         var _loc2_:int = 0x2711676B ^ 0x277415D0 ^ 0x1AC54AF0 ^ 0x1AA0384B;
         var _loc3_:int = 0x19BB49B0 ^ 0x2E3EDBEC ^ 0x05F8D959 ^ -1244024134;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x255EDE1A ^ 0x25FCD089 ^ -1467282935 ^ 0x2F8DFD21))
            {
               case 0:
                  if(this._a87e1f37c552ddaecda1557f[_loc2_].id == param1)
                  {
                     _loc3_ = -608319185 ^ -200574404 ^ -1456932701 ^ 0x013AB208;
                  }
                  else
                  {
                     _loc3_ = -1738392936 ^ -141562265 ^ 0x60932AC3 ^ -1998977146;
                  }
                  break;
               case 1:
                  _loc2_++;
                  _loc3_ = -672253684 ^ 0x5D293345 ^ -1836566223 ^ -1611937082;
                  break;
               case 2:
                  return null;
               case 3:
                  return this._a87e1f37c552ddaecda1557f[_loc2_];
               case 4:
                  _loc2_ = 0x68B47242 ^ 0x6646F124 ^ -1954186797 ^ -2055734603;
                  _loc3_ = -2119952246 ^ -1883154105 ^ 0x7FAC41DC ^ -160564817;
                  break;
               case 5:
                  if(_loc2_ >= this._a87e1f37c552ddaecda1557f.length)
                  {
                     _loc3_ = -712150805 ^ 0x6D293345 ^ 0x082FDFC2 ^ 0x372F65D5;
                  }
                  else
                  {
                     _loc3_ = -1377831580 ^ 0x404B129B ^ 0x31E70FB8 ^ 0x5BD711FC;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _53f0bfe67e79d3186180580d(param1:String) : _c0d0e24e1ed8eae578a7b0b2
      {
         var _loc2_:int = -171851275 ^ -654395099 ^ 0x310BC149 ^ 0x1C34B999;
         var _loc3_:int = -209544264 ^ -988317981 ^ 0x6AF1979E ^ -941030080;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x4FDAFA1E ^ -689036982 ^ -202360054 ^ -246833189))
            {
               case 0:
                  _loc2_ = -270695011 ^ -458451572 ^ 0x41D036FA ^ 0x4AA126EB;
                  _loc3_ = -576471829 ^ -238667232 ^ -1686502798 ^ 0x2C92FB3E;
                  break;
               case 1:
                  _loc2_++;
                  _loc3_ = -1635879692 ^ 0x56E58025 ^ -482288450 ^ -1336518680;
                  break;
               case 2:
                  if(_loc2_ >= this._a87e1f37c552ddaecda1557f.length)
                  {
                     _loc3_ = 0x07445645 ^ -90060510 ^ -1169392217 ^ -601580223;
                  }
                  else
                  {
                     _loc3_ = -1078068286 ^ 0x2125C5D6 ^ 0x480117AD ^ 0x4D14563F;
                  }
                  break;
               case 3:
                  if(this._a87e1f37c552ddaecda1557f[_loc2_].iso2 == param1)
                  {
                     _loc3_ = -908494268 ^ 0x0706599F ^ 0x17907A25 ^ 0x42C2267E;
                  }
                  else
                  {
                     _loc3_ = 0x7ECA946C ^ -1103971965 ^ -217608868 ^ -1468866761;
                  }
                  break;
               case 4:
                  return null;
               case 5:
                  return this._a87e1f37c552ddaecda1557f[_loc2_];
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _c405b2737b524c64680a29a3(param1:String) : Array
      {
         var _loc2_:_c0d0e24e1ed8eae578a7b0b2 = this._b31895c8df36744f6beebecb(param1);
         if(_loc2_ != null)
         {
            return _loc2_.paymentSystemIds;
         }
         return [];
      }
      
      public function get forDropdown() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc2_:int = -980100813 ^ 0x06950D32 ^ -1397641021 ^ 0x6FB064C2;
         while(_loc2_ < this._a87e1f37c552ddaecda1557f.length)
         {
            if(this._a87e1f37c552ddaecda1557f[_loc2_].id != this._662f25cd670252a17f5a08df)
            {
               _loc1_.push(this._a87e1f37c552ddaecda1557f[_loc2_].name);
            }
            _loc2_++;
         }
         _loc1_.sort(this._e5ea87aa524bb98420d33a64);
         return _loc1_;
      }
      
      private function _e5ea87aa524bb98420d33a64(param1:String, param2:String) : Number
      {
         var _loc3_:int = -1327683297 ^ 0x6AFC5826 ^ -574824585 ^ 0x1757FB13;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-885507899 ^ -1063345564 ^ 0x5C8D1419 ^ 0x47E1DBE7))
            {
               case 0:
                  return 0x2B232303 ^ 0x281AC7B0 ^ 0x3BB9984A ^ 0x38807CF9;
               case 1:
                  return -436264711 ^ -1271393254 ^ -315148328 ^ 0x430FFCC4;
               case 2:
                  if(param1 > param2)
                  {
                     _loc3_ = 0x6DB4C4BE ^ -1041461558 ^ -1903051859 ^ 0x3203A482;
                  }
                  else
                  {
                     _loc3_ = 0x61F42E4F ^ -1876979143 ^ -1207523971 ^ 0x59274C57;
                  }
                  break;
               case 3:
                  if(param1 < param2)
                  {
                     _loc3_ = 0x7F22918F ^ -346449144 ^ -1263261815 ^ 0x30057850;
                  }
                  else
                  {
                     _loc3_ = -956632077 ^ -971490730 ^ 0x76E6BD4B ^ 0x66CE21B1;
                  }
                  break;
               case 4:
                  return -1624011315 ^ 0x62C53938 ^ 0x60AC3643 ^ -1655012681;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _c58f345b0040e6bf918d0465(param1:String) : _c0d0e24e1ed8eae578a7b0b2
      {
         var _loc2_:int = -803033699 ^ 0x20787851 ^ -748098156 ^ 0x23323858;
         var _loc3_:int = 0x6A8FB92C ^ 0x33B2FE03 ^ 0x50440573 ^ -597375083;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x41FE1FF8 ^ -22604082 ^ -1877542159 ^ -95259121))
            {
               case 0:
                  return this._a87e1f37c552ddaecda1557f[_loc2_];
               case 1:
                  _loc2_ = 0x377BA2D6 ^ -1752948181 ^ 0x22ABCBDE ^ -2108404957;
                  _loc3_ = 0x305E36A6 ^ -1012889487 ^ 0x3FC7F4EF ^ 0x1924CFF4;
                  break;
               case 2:
                  if(this._a87e1f37c552ddaecda1557f[_loc2_].name == param1)
                  {
                     _loc3_ = 0x0DD6D860 ^ 0x3DBE2718 ^ 0x2CC3DB7D ^ -910777907;
                  }
                  else
                  {
                     _loc3_ = 0x193C3A48 ^ 0x6521D10B ^ 0x7F5ECD33 ^ -698440771;
                  }
                  break;
               case 3:
                  return null;
               case 4:
                  if(_loc2_ >= this._a87e1f37c552ddaecda1557f.length)
                  {
                     _loc3_ = -1912664911 ^ -950796092 ^ 0x78AAEC25 ^ -417569381;
                  }
                  else
                  {
                     _loc3_ = 0x3217148B ^ -265552375 ^ 0x6DBF3BC0 ^ 0x7A9E5488;
                  }
                  break;
               case 5:
                  _loc2_++;
                  _loc3_ = -1652656540 ^ 0x6120AD5F ^ -1565678094 ^ -1947272443;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

