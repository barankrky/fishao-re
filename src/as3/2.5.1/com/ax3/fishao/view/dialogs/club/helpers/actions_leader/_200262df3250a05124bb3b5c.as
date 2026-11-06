package com.ax3.fishao.view.dialogs.club.helpers.actions_leader
{
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.view.dialogs.club.helpers.base._2f6c6d10b633b0793782cff7;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import protocol.api.base.ResponseError;
   
   public class _200262df3250a05124bb3b5c extends _2f6c6d10b633b0793782cff7
   {
      
      private var _293ae5aa7d9e801988738281:int;
      
      private var _description:String;
      
      private var _e5b47f41c8856d056ba11f69:String;
      
      private var _c69b451d3c49a1908820e2ef:int;
      
      private var _467ca95e4b4cab6d4f04c631:Boolean;
      
      public function _200262df3250a05124bb3b5c()
      {
         super();
      }
      
      public function set emblemID(param1:int) : void
      {
         this._293ae5aa7d9e801988738281 = param1;
      }
      
      public function set description(param1:String) : void
      {
         this._description = param1;
      }
      
      public function set clubType(param1:String) : void
      {
         this._e5b47f41c8856d056ba11f69 = param1;
      }
      
      public function set infoEstablished(param1:Boolean) : void
      {
         this._467ca95e4b4cab6d4f04c631 = param1;
      }
      
      public function set requiredLevel(param1:int) : void
      {
         this._c69b451d3c49a1908820e2ef = param1;
      }
      
      override protected function _384d7874fb93e69ef9f82fda(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:int = -1622408672 ^ 0x3041F492 ^ -461815022 ^ 0x4C68E53C;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5E8EC861 ^ -1451389325 ^ 0x551E0146 ^ -1510926391))
            {
               case 0:
                  return;
               case 1:
                  super._384d7874fb93e69ef9f82fda(param1);
                  if(param1 is ResponseError)
                  {
                     _loc2_ = 0x6ADA9B93 ^ -496732128 ^ -1965476951 ^ 0x057B8087;
                  }
                  else
                  {
                     _loc2_ = 0x3785386E ^ -2125929063 ^ -839966061 ^ 0x7C3EAFFB;
                  }
                  break;
               case 2:
                  _fa8d5efc34d8920757369351._ec5b9c66a39c137b3f87a20d(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COMMON_SUCCESS),_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_CHANGES_SAVED));
                  onComplete();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _f5aeda199a20aedfb69196e1(param1:int, param2:String, param3:String, param4:int) : Boolean
      {
         var _loc5_:Boolean = false;
         if(this._467ca95e4b4cab6d4f04c631)
         {
            _loc5_ = param1 != this._293ae5aa7d9e801988738281 || this._description != param2 || this._e5b47f41c8856d056ba11f69 != param3 || this._c69b451d3c49a1908820e2ef != param4;
         }
         return _loc5_;
      }
      
      override public function _5b0b922e5cc4a5322f6ea1d2(param1:Function = null) : void
      {
         super._5b0b922e5cc4a5322f6ea1d2(param1);
         _managerClubs.updateInfo(this._293ae5aa7d9e801988738281,this._description,this._e5b47f41c8856d056ba11f69,this._c69b451d3c49a1908820e2ef,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._384d7874fb93e69ef9f82fda));
      }
   }
}

