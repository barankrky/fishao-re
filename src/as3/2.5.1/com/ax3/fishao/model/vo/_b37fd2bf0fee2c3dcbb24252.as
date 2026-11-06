package com.ax3.fishao.model.vo
{
   public class _b37fd2bf0fee2c3dcbb24252
   {
      
      public var friendName:String;
      
      public var homePoints:int;
      
      public var visitorsAmount:int;
      
      public function _b37fd2bf0fee2c3dcbb24252(param1:String, param2:int, param3:int)
      {
         super();
         this.friendName = param1;
         this.homePoints = param2;
         this.visitorsAmount = param3;
      }
      
      public static function _31249d24d327d467b3b29cd3(param1:_b37fd2bf0fee2c3dcbb24252, param2:_b37fd2bf0fee2c3dcbb24252) : int
      {
         var _loc3_:int = -1054927620 ^ 0x1B946926 ^ -1015297602 ^ 0x237ECEB9;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x4DED32A6 ^ 0x373853F1 ^ 0x356B0202 ^ 0x7530198C))
            {
               case 0:
                  return 0x37364ACD ^ -587216782 ^ 0x1D7D6B47 ^ 0x094B1607;
               case 1:
                  return 0x72254AFC ^ 0x5FEA7CE2 ^ -537821703 ^ -230798361;
               case 2:
                  return -937706555 ^ 0x09BF704B ^ -271297404 ^ 0x2E709F0B;
               case 3:
                  if(param1.homePoints < param2.homePoints)
                  {
                     _loc3_ = 0x4DE2E2F2 ^ -1906258731 ^ 0x49C88461 ^ -1329278819;
                  }
                  else
                  {
                     _loc3_ = 0x6EF72226 ^ 0x1550946B ^ -1850464858 ^ -794957517;
                  }
                  break;
               case 4:
                  if(param1.homePoints > param2.homePoints)
                  {
                     _loc3_ = -1087204618 ^ -1446522821 ^ -327566819 ^ -1073577463;
                  }
                  else
                  {
                     _loc3_ = -264131829 ^ 0x3BD27A19 ^ -1690326513 ^ 0x6A2201C7;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

