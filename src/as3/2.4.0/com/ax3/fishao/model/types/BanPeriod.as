package com.ax3.fishao.model.types
{
   public class BanPeriod
   {
      
      private static var _all:Vector.<BanPeriod> = new Vector.<BanPeriod>();
      
      public static const HOUR:BanPeriod = new BanPeriod("HOUR");
      
      public static const DAY:BanPeriod = new BanPeriod("DAY");
      
      public static const WEEK:BanPeriod = new BanPeriod("WEEK");
      
      public static const MONTH:BanPeriod = new BanPeriod("MONTH");
      
      public static const YEAR:BanPeriod = new BanPeriod("YEAR");
      
      public var name:String;
      
      public function BanPeriod(param1:String)
      {
         super();
         this.name = param1;
         _all.push(this);
      }
      
      public static function getAll() : Vector.<BanPeriod>
      {
         return _all;
      }
   }
}

