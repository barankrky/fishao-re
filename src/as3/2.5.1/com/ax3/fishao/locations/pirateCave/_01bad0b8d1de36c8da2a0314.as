package com.ax3.fishao.locations.pirateCave
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.events._4986c362bed569a2ffb299b4;
   import com.ax3.fishao.locations.sublocation._5496d2d072c6e7a69d5dcae0;
   import com.ax3.fishao.quests._601efb0207d0488bb235ec83;
   import protocol.sr.EnterSublocationSuccessResp;
   import protocol.sr.UpdateResp;
   
   public class _01bad0b8d1de36c8da2a0314 extends _5496d2d072c6e7a69d5dcae0
   {
      
      private var _498b908cb870c5ea0106a280:_601efb0207d0488bb235ec83;
      
      private var _bffa14a477bc2f2924f1a670:_3d43cf5e9b232a13933e3336;
      
      public function _01bad0b8d1de36c8da2a0314(param1:int)
      {
         super(param1);
         this.init();
      }
      
      override public function _3592e9d0ea73ddd76fed836f() : void
      {
         super._3592e9d0ea73ddd76fed836f();
         this._bffa14a477bc2f2924f1a670 = (dialog as _cf1b8d4916fb1556f76161a9).locationLayersBase as _3d43cf5e9b232a13933e3336;
      }
      
      override public function _ff7e8af48da5cd0dc61f3b71(param1:EnterSublocationSuccessResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         super._ff7e8af48da5cd0dc61f3b71(param1);
         for(_loc3_ in param1.data)
         {
            if(param1.data.hasOwnProperty(_loc3_))
            {
               var _loc6_:String = _loc3_;
               switch(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捨掱掫推捠挲捔揸捛捴挹揋排揍揬捹捂捋掙挮接挠捓掖捞挂挟掃掜挑捰捇揽振掃揿","捊掞掐捵挴挅掴挐挭捺挚揨掣掬捙掳") === _loc6_ ? 0x1044AE9B ^ 0x14D4BABE ^ -1593912296 ^ -1536245699 : -267226199 ^ -1651124168 ^ 0x7A3ED0EF ^ 0x17B97B7F)
               {
                  case 0:
                     _loc2_ = param1.getJsonData(_loc3_);
                     dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.LOAD_LOCATION_ITEMS,_loc2_));
               }
            }
         }
      }
      
      private function init() : void
      {
         this._498b908cb870c5ea0106a280 = GameSwf.instance.managerQuests;
      }
      
      override public function _74c869ae3d29b2df7f677f8a(param1:UpdateResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         super._74c869ae3d29b2df7f677f8a(param1);
         for(_loc3_ in param1.data)
         {
            if(param1.data.hasOwnProperty(_loc3_))
            {
               var _loc6_:String = _loc3_;
               switch(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႷဪႼეဇဉၯ႔ၝႣဃ჌ႤျიႬႻမ႟ာჯဋ၎လယႯဤၦႴႴၢႫၼႩဎႨ႟၊Ⴈၧၓႛ","ႚဨႁ႔Ⴟი၍ႫჂျႦყဿიၔჺ") === _loc6_ ? -518831115 ^ 0x7367B19F ^ -637970510 ^ 0x4B8DA5D8 : 0x1823AE82 ^ -1508572037 ^ -1459613132 ^ 0x1736B8CC)
               {
                  case 0:
                     _loc2_ = param1.getJsonData(_loc3_);
                     dispatchEvent(new _4986c362bed569a2ffb299b4(_4986c362bed569a2ffb299b4.REMOVE_LOCATION_ITEM,_loc2_));
               }
            }
         }
      }
   }
}

