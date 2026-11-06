package com.ax3.fishao.view.dialogs.sales
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.sales.model._30373f6dfb5b92bd81a483eb;
   import com.ax3.fishao.view.dialogs.sales.model._4c7ebd89ad51f10d8ea3ca45;
   import com.ax3.fishao.view.dialogs.sales.model._b53c4d44a276cd80ec9cef60;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   import flash.utils.Dictionary;
   import protocol.api.sales.FscExtensionSales;
   import protocol.api.sales.end.ResponseSaleEnd;
   import protocol.api.sales.init.ResponseSalesInit;
   import protocol.api.sales.start.ResponseSaleStart;
   
   public class _a88bd0e7945ef2fef78c2757 extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _c42ed711e3c7f7d89e7bf4e4:FscExtensionSales;
      
      private var _18d5a4e3cddee9eb6c12c218:Array;
      
      private var _dec552a4b280b30b4e6cb13f:Dictionary;
      
      public function _a88bd0e7945ef2fef78c2757()
      {
         super();
         this.init();
      }
      
      private function _451593d66c322850ecfb9c05(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:Object = null;
         var _loc3_:_30373f6dfb5b92bd81a483eb = null;
         if(_8d417bde99754424b1a285c5(param1))
         {
            return;
         }
         if(!this.isDataLoaded)
         {
            super._fcd2ab11aa6496ff709ec1ea(param1);
         }
         var _loc4_:ResponseSalesInit = param1 as ResponseSalesInit;
         var _loc5_:Array = decodeJson(_loc4_.data) as Array;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = _b53c4d44a276cd80ec9cef60._7feebf83ed3cff0e6854a21d(_loc2_);
            this._18d5a4e3cddee9eb6c12c218.push(_loc3_);
            this._dec552a4b280b30b4e6cb13f[_loc3_.id] = _loc3_;
         }
      }
      
      private function _e9d7972c934360a72ced4471(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(_8d417bde99754424b1a285c5(param1))
         {
            return;
         }
         var _loc2_:ResponseSaleStart = param1 as ResponseSaleStart;
         var _loc3_:Object = decodeJson(_loc2_.sale);
         var _loc4_:_30373f6dfb5b92bd81a483eb = _b53c4d44a276cd80ec9cef60._7feebf83ed3cff0e6854a21d(_loc3_);
         this._18d5a4e3cddee9eb6c12c218.push(_loc4_);
         this._dec552a4b280b30b4e6cb13f[_loc4_.id] = _loc4_;
         _loc4_.start();
      }
      
      private function _b8d67c21c1b159f9e056a8c2(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(_8d417bde99754424b1a285c5(param1))
         {
            return;
         }
         var _loc2_:ResponseSaleEnd = param1 as ResponseSaleEnd;
         var _loc3_:_30373f6dfb5b92bd81a483eb = this._dec552a4b280b30b4e6cb13f[_loc2_.saleId];
         Debug.assertNotEqual(_loc3_,null,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剜剩刌剪刟刾劼勚劵劲刜剬剔剹刄刱勑剴劾劫剋刜勈劮劵刓剺勴剣劙剩劚剌刲判勎剕刖勻劘勗劘刺劶刈勡劥券創劋刎剨刮刍剱劆功剛剼劆勜剓劲创办勅劫功劭剁劫劕勆剔勡刢剤剃劃刧劝刐劔劥判勋办刑勢剮剙剆","剀剕勢勴刉勻劾剨刅剹刲剙劸剽勷切"));
         this._18d5a4e3cddee9eb6c12c218.splice(this._18d5a4e3cddee9eb6c12c218.indexOf(_loc3_),-88209496 ^ 0x223E7F5D ^ -163940542 ^ 0x2EBA0FB6);
         this._dec552a4b280b30b4e6cb13f[_loc3_.id] = null;
         _loc3_.end();
      }
      
      private function init() : void
      {
         this._18d5a4e3cddee9eb6c12c218 = [];
         this._dec552a4b280b30b4e6cb13f = new Dictionary(true);
         this._c42ed711e3c7f7d89e7bf4e4 = _dfa25706e58a240c1e33e5c6.fscModel.extensionSales;
         _4575c3ec15103b43cbf2be04(ResponseSaleStart,this._e9d7972c934360a72ced4471);
         _4575c3ec15103b43cbf2be04(ResponseSaleEnd,this._b8d67c21c1b159f9e056a8c2);
      }
      
      override public function loadInitData(param1:Function) : void
      {
         super.loadInitData(param1);
         this._c42ed711e3c7f7d89e7bf4e4.getDataInit(this._451593d66c322850ecfb9c05);
      }
      
      public function _7db2e9fb4bb231b6c8b8b892() : _30373f6dfb5b92bd81a483eb
      {
         var _loc1_:_30373f6dfb5b92bd81a483eb = null;
         var _loc2_:_30373f6dfb5b92bd81a483eb = null;
         for each(_loc1_ in this._18d5a4e3cddee9eb6c12c218)
         {
            if(_loc1_.type == _4c7ebd89ad51f10d8ea3ca45.EST_EXTRA_AMOUNT)
            {
               _loc2_ = _loc1_;
               break;
            }
         }
         return _loc2_;
      }
   }
}

