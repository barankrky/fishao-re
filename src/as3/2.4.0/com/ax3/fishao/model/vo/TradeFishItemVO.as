package com.ax3.fishao.model.vo
{
   import com.ax3.fishao.model.ITradeItem;
   
   public class TradeFishItemVO implements ITradeItem
   {
      
      public var id:int;
      
      public var type:int;
      
      public var title:String;
      
      public var fishImageUrl:String;
      
      public var worth:int;
      
      public var amount:int;
      
      public function TradeFishItemVO()
      {
         super();
      }
      
      public function get getAmount() : int
      {
         return this.amount;
      }
   }
}

