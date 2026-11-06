package com.ax3.fishao.model.pling
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.jss.model.states._cd789badd5efc353d515a554;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import protocol.api.plings.receive.ResponsePlingReceive;
   import protocol.sr.GetDataResp;
   
   public class _6da056ef4965277960002989 extends EventDispatcher
   {
      
      private const _4982210dbff68841f19c98b1:Event = new Event(Event.CHANGE);
      
      private var _78d71098b67899edb185f9bc:Vector.<_acdfca446f7bd1a1ed443c02> = new Vector.<_acdfca446f7bd1a1ed443c02>();
      
      private var _77928573abe2de5aa39513ae:int = 0;
      
      public function _6da056ef4965277960002989()
      {
         super();
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(GetDataResp,this._d4c1ec7be0ce76d0b48cca5b);
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(ResponsePlingReceive,this._3166fc3d8dfa85d04fbf42a0);
         _dfa25706e58a240c1e33e5c6.fscModel._d10c0f03d4614bf89ae6ef7f(_cd789badd5efc353d515a554.CONNECTED,this._612a46a369ea7484eadececf);
      }
      
      private function _612a46a369ea7484eadececf() : void
      {
         _dfa25706e58a240c1e33e5c6.fscModel.plingExtension._482622041d2ff1f81981e395();
      }
      
      private function _d4c1ec7be0ce76d0b48cca5b(param1:GetDataResp) : void
      {
         var _loc2_:Array = null;
         var _loc3_:ResponsePlingReceive = null;
         var _loc4_:int = -1103349373 ^ -218720827 ^ -749696229 ^ -1617287331;
         var _loc5_:int = 0x4579B7D8 ^ 0x1EFFB960 ^ 0x7CD02292 ^ 0x27562C2A;
         if(param1.data.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剨勂刉勥刦劋刂勯劵助務劫勑切募剠剫刪劣刢勂勇劲刳刘刷劈刄勘刼刌劰","劼劤勶劣勳刚剠劦勨剾劬劬剶勎勵剤")))
         {
            _loc2_ = JSON.parse(param1.data.plingHistory) as Array;
            if(_loc2_ != null)
            {
               this._78d71098b67899edb185f9bc.length = 0x104376C8 ^ 0x5CB55A71 ^ 0x01D1621C ^ 0x4D274EA5;
               _loc2_.sortOn(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჆ူრဣ့ბႆႮၒჅမႳၜႳႻႛဈႋႛၲპ၎၁ႸხႻ႕႙ြႋညၭ","ႺၳჄ჌ဘყႜႾჳၻჳჽ႗ჾႻႮ"),Array.NUMERIC);
               _loc4_ = Math.min(-403160126 ^ 0x726D727F ^ 0x5D05B55A ^ -930052883,_loc2_.length);
               _loc5_ = -2122952738 ^ 0x6EAE99D8 ^ -964486788 ^ 0x295BCF7A;
               while(_loc5_ < _loc4_)
               {
                  _loc3_ = new ResponsePlingReceive();
                  _loc3_.id = _loc2_[_loc5_].id;
                  _loc3_.type = _loc2_[_loc5_].type;
                  _loc3_.params = _loc2_[_loc5_].params;
                  this._78d71098b67899edb185f9bc.push(new _acdfca446f7bd1a1ed443c02(_loc3_));
                  _loc5_++;
               }
               this._77928573abe2de5aa39513ae = this._78d71098b67899edb185f9bc.length;
               this.dispatchEvent(this._4982210dbff68841f19c98b1);
            }
         }
      }
      
      public function _3166fc3d8dfa85d04fbf42a0(param1:ResponsePlingReceive) : void
      {
         if(GameSwf.currentLocationDialog != null && GameSwf.currentLocationDialog.isActive())
         {
            this._78d71098b67899edb185f9bc.push(new _acdfca446f7bd1a1ed443c02(param1));
            this.dispatchEvent(this._4982210dbff68841f19c98b1);
         }
      }
      
      public function get newCount() : int
      {
         return Math.max(0x700FF83A ^ 0x551C6563 ^ -1955483418 ^ -1369297473,this._78d71098b67899edb185f9bc.length - this._77928573abe2de5aa39513ae);
      }
      
      public function _78f936d8568b9e96c7b6ec90() : _acdfca446f7bd1a1ed443c02
      {
         var _loc1_:_acdfca446f7bd1a1ed443c02 = null;
         if(this._78d71098b67899edb185f9bc.length > this._77928573abe2de5aa39513ae)
         {
            _loc1_ = this._78d71098b67899edb185f9bc[this._77928573abe2de5aa39513ae];
            ++this._77928573abe2de5aa39513ae;
            return _loc1_;
         }
         return null;
      }
      
      public function _1438a6090ec0a17e3abd0046(param1:int) : _acdfca446f7bd1a1ed443c02
      {
         if(param1 >= (-590473948 ^ 0x75A32DD5 ^ 0x725DB622 ^ -617574701) && param1 < this._78d71098b67899edb185f9bc.length)
         {
            return this._78d71098b67899edb185f9bc[param1];
         }
         return null;
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if(hasEventListener(param1.type) || param1.bubbles)
         {
            return super.dispatchEvent(param1);
         }
         return true;
      }
      
      public function get length() : int
      {
         return this._78d71098b67899edb185f9bc.length;
      }
      
      public function _ede466d4e3cceec3ca8035d0() : void
      {
         var _loc1_:int = 0x205D867D ^ 0x44729F97 ^ 0x114B61AB ^ -134670671;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-764607376 ^ -1950772556 ^ 0x691AD47C ^ -1303172024))
            {
               case 0:
                  if(this._78d71098b67899edb185f9bc.length < (0x0A892AC1 ^ -1353381693 ^ -414778951 ^ 0x429ADBB1))
                  {
                     _loc1_ = 0x016814DC ^ 0x16C2934C ^ -1898055601 ^ 0x1BEA112D;
                  }
                  else
                  {
                     _loc1_ = -749673042 ^ -478318089 ^ 0x2CB4E9C6 ^ -1643900050;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  _dfa25706e58a240c1e33e5c6.fscModel.plingExtension._482622041d2ff1f81981e395();
                  _loc1_ = 0x213A05C6 ^ 0x0D64F873 ^ 0x05CFA7E1 ^ -1425263451;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

