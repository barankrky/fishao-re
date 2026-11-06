package com.ax3.fishao.locations.furniture_factory
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.events._4986c362bed569a2ffb299b4;
   import com.ax3.fishao.locations.sublocation._5496d2d072c6e7a69d5dcae0;
   import com.ax3.fishao.view.dialogs.furniture_factory._c77d525b20bc5f754c3cac44;
   import protocol.sr.UpdateResp;
   
   public class _cc170ef077916399956c86a9 extends _5496d2d072c6e7a69d5dcae0
   {
      
      private var _fb732a61d9edbe720cf85b34:_79f62ae7f3b54f8ffcd369e4;
      
      private var _a9f76460b6b94ae40ee6936a:_c77d525b20bc5f754c3cac44;
      
      public function _cc170ef077916399956c86a9(param1:int)
      {
         super(param1);
         this._a9f76460b6b94ae40ee6936a = GameSwf.instance.managerFurnitureFactory;
      }
      
      override public function _3592e9d0ea73ddd76fed836f() : void
      {
         super._3592e9d0ea73ddd76fed836f();
         this._fb732a61d9edbe720cf85b34 = (dialog as _b970dad26ff2859afdd7f7a1).locationLayersBase as _79f62ae7f3b54f8ffcd369e4;
      }
      
      override public function _74c869ae3d29b2df7f677f8a(param1:UpdateResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         for(_loc3_ in param1.data)
         {
            if(param1.data.hasOwnProperty(_loc3_))
            {
               var _loc6_:String = _loc3_;
               switch(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("წძჿဦယႼსბაဨႩიၗၡႱჸႅჟქၾჺჽဥგხႺႍႛၛႤဒჄၼႄွၛဘဉိ჉","ოုႳვ္ႈၮ။ႋၘဋဋ႐ႀ჉၀") === _loc6_ ? 0x17986BB3 ^ -146879398 ^ -164467120 ^ 0x1694C9B9 : -1075691167 ^ -98621820 ^ -818035972 ^ -1967086312)
               {
                  case 0:
                     _loc2_ = param1.getJsonData(_loc3_);
                     dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.UPDATE_BOARD_FISH,_loc2_));
               }
            }
         }
         super._74c869ae3d29b2df7f677f8a(param1);
      }
      
      public function _9885756e6b482e3f691deced() : void
      {
         this._fb732a61d9edbe720cf85b34.furnitureBox.isEnabled = this._a9f76460b6b94ae40ee6936a.rewardTimeLeft == (-560113069 ^ -146649701 ^ -808644208 ^ -435026344);
      }
   }
}

