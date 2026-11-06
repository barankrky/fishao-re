package com.ax3.jss.ext.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.ext._af553da4b23e7233e6fbc19c;
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import flash.events.IEventDispatcher;
   import protocol.cr.GetDataReq;
   import protocol.cr.UpdateReq;
   
   public class _7d4f1954a0455eca4c59f5c2 extends _d23481b750999df4f0e00416 implements _af553da4b23e7233e6fbc19c
   {
      
      public function _7d4f1954a0455eca4c59f5c2()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function _dff12a1300121d85f9601b39(param1:int) : void
      {
         var _loc2_:UpdateReq = null;
         _loc2_ = new UpdateReq();
         _loc2_.data = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揰揕挽掽挓捔挭揆揃揢揬捚掘挴挠揨捻捃损掐揄揸挖揈揁捐揗挛掓掋捉挧","捩捪換掴挍捔掖揿掛捊揘挢掏掚揈揿")):param1};
         _connection.send(_loc2_,null);
      }
      
      public function _482622041d2ff1f81981e395() : void
      {
         var _loc1_:GetDataReq = new GetDataReq();
         _loc1_.data = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捨掷捌捎挐揅控捕捂捡揰掊揀挶揌捚掟挫捡捼捍挑挘捋捂揇掰捲揔掋挍揇","捻挈挾揠揄捘掻挴採揩揀掍挭挋揮揲")):true};
         _connection.send(_loc1_,null);
      }
   }
}

