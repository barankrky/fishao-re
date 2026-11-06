package com.ax3.jss.ext.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.ext._af553da4b23e7233e6fbc19c;
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import flash.events.IEventDispatcher;
   import protocol.cr.BuyResourceReq;
   import protocol.cr.GetDataReq;
   
   public class _70497d2829a1401e1f496823 extends _d23481b750999df4f0e00416 implements _af553da4b23e7233e6fbc19c
   {
      
      public function _70497d2829a1401e1f496823()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function _f6074ebebfafeec641c2e050(param1:String, param2:Function) : void
      {
         var _loc3_:GetDataReq = null;
         _loc3_ = new GetDataReq();
         _loc3_.data = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掗捉揄挍挊捲捱挶捪揲捗揆挃捐掕捰挻揦提挱掬挿捍捾捭挓捽换挜握掃捱掰掓掾捉掿捱","揮捜捴掸揘捍揆挃捚捨挡损挱挄掶掘")):param1};
         _connection.send(_loc3_,param2);
      }
      
      public function _68476dd870159e6d13f9ed50(param1:int, param2:int, param3:int, param4:String, param5:Function = null) : void
      {
         var _loc6_:BuyResourceReq = new BuyResourceReq(param1,param2,param3,param4);
         _connection.send(_loc6_,param5);
      }
      
      public function _9b229cc5d6fc047631849e2e(param1:Function) : void
      {
         var _loc2_:GetDataReq = new GetDataReq();
         _loc2_.data = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捝换挿掟捷捱揷授捋捂挟揫挴挬挌挍捱挹挼捋掟揉捜揲捶排掆挴掽揘挆挷控捖捺揱掄挛揺捝捁挛揯捘揾掴","挶掴揞挤揅揫捩掬掊捧挤捶挓挒挤揱")):0x3492D1BF ^ -256205772 ^ 0x5FB66239 ^ -1684131917};
         _connection.send(_loc2_,param1);
      }
   }
}

