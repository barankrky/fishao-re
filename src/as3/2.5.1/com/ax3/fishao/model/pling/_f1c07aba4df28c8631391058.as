package com.ax3.fishao.model.pling
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations._01cf9a78594a0bb30b57b0c3;
   
   public class _f1c07aba4df28c8631391058
   {
      
      public static const RESOURCE_RECEIVED:uint = 0x7BEA4D3A ^ -2136930215 ^ -1299570327 ^ 0x49C1646C;
      
      public static const TOURNAMENT_START_IN:uint = -471690104 ^ 0x66856D1A ^ -479118918 ^ 0x6616C058;
      
      public static const EPT_FISHING_LINE_UPDATE:uint = 0x1C20347B ^ -1681483570 ^ -375390013 ^ 0x6E46ACBE;
      
      public static const EPT_MONEY_TREE_UPDATE:uint = -132439004 ^ -1553234204 ^ -721313156 ^ -1905196656;
      
      public static const EPT_END_OF_INF_LUCK_POTION:uint = -93256236 ^ -1923987714 ^ -170203123 ^ -2097567021;
      
      public static const EPT_END_OF_INF_MAGIC_WATCH:uint = 0x0B1EBABB ^ -2126485325 ^ 0x4A0B91C4 ^ -1068154311;
      
      public static const EPT_END_OF_INF_FISH_RADAR:uint = 0x4914A8B0 ^ -75211447 ^ -902818636 ^ 0x78A0E0BB;
      
      public static const EPT_END_OF_INF_EXP_BOOSTER:uint = 0x6D7AA0D2 ^ 0x1281E611 ^ -1648907643 ^ -498274895;
      
      public static const EPT_END_OF_INF_SHINY_POTION:uint = 0x5AECDE3C ^ 0x472E492A ^ -576687179 ^ -1067260581;
      
      public static const EPT_END_OF_INF_POWER_BOOSTER:uint = -318939008 ^ -1131976461 ^ 0x674A2E13 ^ 0x37302799;
      
      public static const EPT_NEW_SHINY_COLLECTION_AVAILABLE:uint = 0x22C23EF2 ^ -1136359688 ^ 0x473BD3BA ^ -641898008;
      
      public static const EPT_NEW_SHINY_POTIONS_AVAILABLE:uint = -201618613 ^ 0x5822471C ^ 0x1F04A1F6 ^ -1260556515;
      
      public static const EPT_COLLECTION_COMPLETED:uint = 0x74020280 ^ -427251068 ^ 0x62669A7E ^ -252956326;
      
      public static const EPT_COLLECTION_UNLOCKED:uint = -396468253 ^ 0x461279C6 ^ -1938749469 ^ 0x223D22E7;
      
      public static const EPT_COLLECTION_UNLOCK_LOST_VALLEY_FISH:uint = -29573335 ^ 0x0EB29F8A ^ -108519790 ^ 0x09063D13;
      
      public static const CLUB_TOURNAMENT_START_IN:uint = -1262942224 ^ 0x23473CF0 ^ -180280257 ^ 0x62BF1CBB;
      
      public static const CLUB_TOURNAMENT_END:uint = 0x2379832F ^ -404150997 ^ -605416865 ^ 0x1F7AB7DE;
      
      public static const EPT_WHEEL_OF_FORTUNE_REWARD_FISH_UNLOCK:uint = 0x20A9FB8B ^ -358076667 ^ -1573534074 ^ 0x683411E0;
      
      public static const EPT_WHEEL_OF_FORTUNE_REWARD_EXP:uint = -893225952 ^ -889997465 ^ -1108379340 ^ -1109476966;
      
      public function _f1c07aba4df28c8631391058()
      {
         super();
      }
      
      public static function _6b8907a8df067f554d81ed5b(param1:String) : uint
      {
         var _loc2_:uint = uint(0x6B16A1C7 ^ -1623176945 ^ -1356447265 ^ 0x5B70A917);
         switch(param1)
         {
            case _01cf9a78594a0bb30b57b0c3.EBT_EXP:
               §§push(0x580FDE5E ^ -225786796 ^ 0x46FA589A ^ -327204208);
               break;
            case _01cf9a78594a0bb30b57b0c3.EBT_LUCKY_POTION:
               §§push(-83411413 ^ 0x69D5AF65 ^ 0x79FB7016 ^ -349576871);
               break;
            case _01cf9a78594a0bb30b57b0c3.EBT_MAGIC_WATCH:
               §§push(0x76696470 ^ -1684742046 ^ -176789680 ^ 0x188BE340);
               break;
            case _01cf9a78594a0bb30b57b0c3.EBT_RADAR:
               §§push(-55340052 ^ 0x06DE6DA6 ^ 0x6EEED0CF ^ -1803342202);
               break;
            case _01cf9a78594a0bb30b57b0c3.EBT_SHINY_POTION:
               §§push(-79783491 ^ 0x1D333F86 ^ 0x6C5A564B ^ -1973948300);
               break;
            case _01cf9a78594a0bb30b57b0c3.EBT_POWER_BOOSTER:
               §§push(-2046596656 ^ -1463091228 ^ -299731799 ^ -1058282856);
               break;
            default:
               §§push(-1728383428 ^ -134089340 ^ 0x612BE35B ^ 0x01D0E0E5);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = EPT_END_OF_INF_EXP_BOOSTER;
               break;
            case 1:
               _loc2_ = EPT_END_OF_INF_LUCK_POTION;
               break;
            case 2:
               _loc2_ = EPT_END_OF_INF_MAGIC_WATCH;
               break;
            case 3:
               _loc2_ = EPT_END_OF_INF_FISH_RADAR;
               break;
            case 4:
               _loc2_ = EPT_END_OF_INF_SHINY_POTION;
               break;
            case 5:
               _loc2_ = EPT_END_OF_INF_POWER_BOOSTER;
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
   }
}

