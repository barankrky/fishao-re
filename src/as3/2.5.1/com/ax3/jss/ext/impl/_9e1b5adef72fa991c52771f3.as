package com.ax3.jss.ext.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss._e608a1592a1884368748e33f;
   import com.ax3.jss.events._d2f221bbcfd428bfdc43d954;
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import com.ax3.jss.model.states._6ad0e2821c6ebbf3ebab748d;
   import com.ax3.jss.model.states._cd789badd5efc353d515a554;
   import com.ax3.jss.requests.server.enums._759d77b0a7c8387256769f74;
   import com.ax3.utils._0ce7a4d99e17666ff0e19ce6;
   import com.ax3.utils.timer._33dd41a12065671be9311587;
   import flash.events.IEventDispatcher;
   
   public class _9e1b5adef72fa991c52771f3 extends _d23481b750999df4f0e00416
   {
      
      public var connectTimeoutSec:Number = 20;
      
      private var _6b4dbe70759a971e2f30e0a0:String = _e608a1592a1884368748e33f.IDLE;
      
      private var _5cec7d193d6aac058dec6d0e:String;
      
      private var _d2906b6936c1b7366e8ee65d:Boolean = true;
      
      private var _307a5280e5e1269b5912df8e:Boolean = true;
      
      private var _08b708da953f85144322e811:Boolean = false;
      
      private var _e78cba0e00f7d972d0b796ff:_33dd41a12065671be9311587;
      
      public function _9e1b5adef72fa991c52771f3()
      {
         super();
         this._e78cba0e00f7d972d0b796ff = new _33dd41a12065671be9311587();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
         param1.addEventListener(_d2f221bbcfd428bfdc43d954.CONNECT_TO_SERVER_SOCKET,this._c2bf8d726e0ee615a441e525);
         param1.addEventListener(_d2f221bbcfd428bfdc43d954.CONNECTION_LOST,this._8259166ef65cc912a19b2ed2);
      }
      
      public function open(param1:String) : void
      {
         this._5cec7d193d6aac058dec6d0e = param1;
         this._d2906b6936c1b7366e8ee65d = true;
         this._4cda64ba3a4e19164194a335();
      }
      
      public function _a419cce3ba1ca75ddf343ab2(param1:String) : void
      {
         this.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劎勒勝功劊劌劇剼励剹剩剄刕劐劎剜劉勻刟助劍刄剫剉刱勿刨効刕勎勋列刌刣剐删勩剾勇刂刀刞","刾刄剕刣劋刌務剜勵勅剃劕劽刟勫剅") + param1);
         this._5cec7d193d6aac058dec6d0e = param1;
         this._d2906b6936c1b7366e8ee65d = true;
         this._16125c557d7e46e5153302cc(_759d77b0a7c8387256769f74.SERVER_CHANGE);
         this._4cda64ba3a4e19164194a335();
      }
      
      public function close(param1:String = null) : void
      {
         if(param1 == null)
         {
            param1 = _759d77b0a7c8387256769f74.MANUAL_DISCONNECT;
         }
         this._d2906b6936c1b7366e8ee65d = false;
         this._16125c557d7e46e5153302cc(param1);
         this._b222282a7c7399a50b88d79d(_e608a1592a1884368748e33f.CLOSED);
         _fscModel.state = _cd789badd5efc353d515a554.DISCONNECTED;
      }
      
      public function _e9a9df5df8a24f9cc71d785d() : Boolean
      {
         return this._6b4dbe70759a971e2f30e0a0 == _e608a1592a1884368748e33f.CONNECTED;
      }
      
      public function _530c421658b5785343e78b22() : Boolean
      {
         return this._6b4dbe70759a971e2f30e0a0 == _e608a1592a1884368748e33f.FAILED;
      }
      
      public function _0b8717013a3fea5d5737f1e6() : Boolean
      {
         return this._6b4dbe70759a971e2f30e0a0 == _e608a1592a1884368748e33f.CONNECTING;
      }
      
      public function _8c08c789507e1a9a48cf7c50() : Boolean
      {
         return this._307a5280e5e1269b5912df8e;
      }
      
      public function get phase() : String
      {
         return this._6b4dbe70759a971e2f30e0a0;
      }
      
      public function get autoReconnect() : Boolean
      {
         return this._d2906b6936c1b7366e8ee65d;
      }
      
      public function set autoReconnect(param1:Boolean) : void
      {
         this._d2906b6936c1b7366e8ee65d = param1;
      }
      
      private function _4cda64ba3a4e19164194a335() : void
      {
         if(this._5cec7d193d6aac058dec6d0e == null)
         {
            this.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ოჶၸဖ႗Ⴠၬ჻လၧრႱဂႳ၄ჼဿჁ၈Ⴆ႕ဂႾႩ჋ၼႪႼါႁတჍစၕၴႄ။ბ჉ၚဢ჻ႫჍာၮၺၝင჆ၚၣქ၈ၳლ","Ⴭჷ႐ၠ჏ၵ၇ာၭဃ჋ဗၭჿၫ჎"));
            return;
         }
         this._e78cba0e00f7d972d0b796ff.destroy();
         this._b222282a7c7399a50b88d79d(_e608a1592a1884368748e33f.CONNECTING);
         _fscModel.state = this._307a5280e5e1269b5912df8e ? _cd789badd5efc353d515a554.CONNECTING : _cd789badd5efc353d515a554.RECONNECTING;
         this._e78cba0e00f7d972d0b796ff._bc1d2c0c359bffe4ef99cfee(this.connectTimeoutSec,new _0ce7a4d99e17666ff0e19ce6(this._f5d22c1cb6f6c151173d4e1f));
         _connection.connect(this._5cec7d193d6aac058dec6d0e);
      }
      
      private function _16125c557d7e46e5153302cc(param1:String) : void
      {
         this._e78cba0e00f7d972d0b796ff.destroy();
         this._08b708da953f85144322e811 = true;
         _connection.disconnect(param1);
         this._08b708da953f85144322e811 = false;
      }
      
      private function _c2bf8d726e0ee615a441e525(param1:_d2f221bbcfd428bfdc43d954) : void
      {
         this._e78cba0e00f7d972d0b796ff.destroy();
         this._307a5280e5e1269b5912df8e = false;
         this._b222282a7c7399a50b88d79d(_e608a1592a1884368748e33f.CONNECTED);
         _fscModel.state = _cd789badd5efc353d515a554.SOCKET_CONNECTED;
      }
      
      private function _8259166ef65cc912a19b2ed2(param1:_d2f221bbcfd428bfdc43d954) : void
      {
         var _loc2_:int = -1085835086 ^ 0x2A270DC2 ^ -149471879 ^ 0x37CA0190;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x490ABCD0 ^ 0x65A13465 ^ -1108255295 ^ -991453972))
            {
               case 0:
                  return;
               case 1:
                  if(this._08b708da953f85144322e811)
                  {
                     _loc2_ = -2126712226 ^ 0x39241DF3 ^ -1733107455 ^ 0x75174734;
                  }
                  else
                  {
                     _loc2_ = -659058560 ^ 0x77D1D0B6 ^ 0x03F68840 ^ -114458132;
                  }
                  break;
               case 2:
                  this._a0196db7de6a882e0ae22442(String(param1.data));
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _f5d22c1cb6f6c151173d4e1f() : void
      {
         this.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("务剶勒剕勂劯劧刏刈列勨劰劂刉剎力勸勹剋勆劈刣别劔剫劜劶劒剜勃刀功券剅刦刓删劋勗勵剴勢勼则劁删刖剞刼勮前刿","剼剥剶劮務初励劃勜劰剗剪勦劾劸労") + this.connectTimeoutSec + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揞捬按掋挏振揟挍揎捊","挘捍捄掟捑挥捇挕揓掤揱捋揫挠捥揎"));
         this._16125c557d7e46e5153302cc(_759d77b0a7c8387256769f74.CONNECT_TIMEOUT);
         this._a0196db7de6a882e0ae22442(_759d77b0a7c8387256769f74.CONNECT_TIMEOUT);
      }
      
      private function _a0196db7de6a882e0ae22442(param1:String) : void
      {
         var _loc2_:int = -1817578716 ^ 0x6EB5E262 ^ 0x69D10648 ^ 0x6CAE201C;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x64F57408 ^ -1651376209 ^ -396086625 ^ -379351510))
            {
               case 0:
                  this._e78cba0e00f7d972d0b796ff.destroy();
                  if(!this._d2906b6936c1b7366e8ee65d)
                  {
                     _loc2_ = -1193847884 ^ 0x799E901D ^ -579464424 ^ -463673438;
                  }
                  else
                  {
                     _loc2_ = -1465001704 ^ -181000883 ^ 0x0F50B1A4 ^ -1431799071;
                  }
                  break;
               case 1:
                  this.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掠掯挨挏握捎捰捇揠插揧掅捷挏捝掺挂掆揢掓捻捴捘捃挧捇揤挙揭揚挠挰掙挿挕揎捧掀挱揦捽捺","捜挘揘掶掃捿掖揖捸掝挨捆捘捸揼掽") + param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("მၑၤႹაႼဨေႍႎဎကဆႼტႵှႆဆၗ႕ჾၡၯမႿ႑ၷကႊႼၜၧზၸျၖဳ჏ზႈၳႫဃဳဒ၆ၜ","ვჀწဤჾၙႬბၺႍჟၡဧ၀ႂၜ"));
                  this._b222282a7c7399a50b88d79d(_e608a1592a1884368748e33f.CLOSED);
                  _fscModel.state = _cd789badd5efc353d515a554.DISCONNECTED;
                  return;
               case 2:
                  this.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴃბღჭ჏ၖႌၜ჋႙ၙႵჩဣჳ჎လ၄ဋျၚ჻ိყငუဉႌჄჂჺ၏ၵპეၩჶရႸံႈჂ","ၳ်႑တჱნႁႯၒဵၰრ჎ჺၭၶ") + param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ုၬႲၳဵဳကဪჄ၊","ၖჯႷჵဧ჏့ჇဖၫၫႁჁၿႜၽ"));
                  this._b222282a7c7399a50b88d79d(_e608a1592a1884368748e33f.FAILED);
                  _fscModel.state = _cd789badd5efc353d515a554.ERROR;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _b222282a7c7399a50b88d79d(param1:String) : void
      {
         var _loc2_:int = -1619787766 ^ 0x550F43BE ^ -1599761108 ^ -1864065582;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1887633218 ^ 0x7D3D8D7D ^ 0x02FBBDC5 ^ 0x0A817B4C))
            {
               case 0:
                  if(this._6b4dbe70759a971e2f30e0a0 != param1)
                  {
                     _loc2_ = 0x372B88B9 ^ -1011177751 ^ 0x260FE3B1 ^ 0x28A486AA;
                  }
                  else
                  {
                     _loc2_ = -1837036637 ^ -277351376 ^ -10556569 ^ 0x78925FBC;
                  }
                  break;
               case 1:
                  this.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勑勺则剦刨剡刣則劢勀剾刑刨勏剌勻勀刖劦劃","剈勼勫勌勌刄办劰勉劳刹勗剈剪剝刭") + this._6b4dbe70759a971e2f30e0a0 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၡဦჲႹဓႯၡၤ၄ဪ჋ၵၱႺႯၴ","Ⴊျဿဦထჲၕ჌ၟံကၹာဋၢჟ") + param1);
                  this._6b4dbe70759a971e2f30e0a0 = param1;
                  _loc2_ = 0x39DCFFCC ^ -1870113 ^ -1640114950 ^ -1573382495;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function log(param1:String) : void
      {
         _connection.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဂ႓ႃခၰဢဴჹႬႤჁဥညႲဤႣჷဇ၀ဣႈ၍ဠၙီၶჳႁသჯ၌႞ဂ႑ၢၓ၈ႱႾ჉჏მ","ၴ႑ეဴၝჩဩြႷႍ၇ყႣთ႗္") + param1);
      }
   }
}

