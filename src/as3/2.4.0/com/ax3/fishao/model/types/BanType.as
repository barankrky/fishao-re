package com.ax3.fishao.model.types
{
   import com.ax3.utils.empty;
   
   public class BanType
   {
      
      private static var _all:Vector.<BanType> = new Vector.<BanType>();
      
      public static const NORMAL:BanType = new BanType("Normal",3191552,false,false);
      
      public static const WARNING:BanType = new BanType("Warning",7820082,false,true);
      
      public static const COMMUNICATION_BAN:BanType = new BanType("CommunicationBan",16765440,true,true);
      
      public static const FULL_BAN:BanType = new BanType("FullBan",16716288,true,true);
      
      public static const DISMISS_REPORT:BanType = new BanType("DismissReport",7763574,false,true);
      
      public var name:String;
      
      public var color:uint;
      
      public var hasTime:Boolean;
      
      public var id:uint;
      
      public var selectable:Boolean;
      
      public function BanType(param1:String, param2:uint, param3:Boolean, param4:Boolean)
      {
         super();
         this.name = param1;
         this.color = param2;
         this.hasTime = param3;
         this.selectable = param4;
         this.id = _all.length;
         _all.push(this);
      }
      
      public static function getAll() : Vector.<BanType>
      {
         return _all;
      }
      
      public static function findByName(param1:String) : BanType
      {
         var _loc2_:BanType = null;
         if(empty(param1))
         {
            return NORMAL;
         }
         for each(_loc2_ in _all)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function indexOf(param1:BanType) : int
      {
         return _all.indexOf(param1);
      }
   }
}

