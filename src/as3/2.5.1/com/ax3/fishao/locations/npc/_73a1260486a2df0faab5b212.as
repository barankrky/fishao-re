package com.ax3.fishao.locations.npc
{
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations._3e7dee0195ecd6b652b730f1;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.locations.npc.base._e42949745420bb5a55035b31;
   
   public class _73a1260486a2df0faab5b212
   {
      
      public function _73a1260486a2df0faab5b212()
      {
         super();
      }
      
      public static function _ac63334daf6aee83b062b715(param1:String, param2:_810c4ade948afb64e9c7ee25, param3:_3e7dee0195ecd6b652b730f1) : _ba120ae720a391732e866217
      {
         var _loc4_:_ba120ae720a391732e866217 = null;
         switch(param1)
         {
            case _e42949745420bb5a55035b31.ENN_BOB:
               §§push(0x774C2647 ^ 0x0C8DFBAC ^ -432955436 ^ -1645198785);
               break;
            case _e42949745420bb5a55035b31.ENN_CARP:
               §§push(0x57917933 ^ -2099949667 ^ 0x73B1AF88 ^ -1493853913);
               break;
            case _e42949745420bb5a55035b31.ENN_JAHNI:
               §§push(-2107803384 ^ 0x22579B2E ^ -2123167065 ^ 0x2179E883);
               break;
            case _e42949745420bb5a55035b31.ENN_LUCKY_SAILOR:
               §§push(0x7157F6CD ^ 0x52870281 ^ -1475481681 ^ -1948443680);
               break;
            case _e42949745420bb5a55035b31.ENN_REX:
               §§push(-2015104706 ^ 0x030F5E37 ^ 0x3E3BBB09 ^ -1160309756);
               break;
            case _e42949745420bb5a55035b31.ENN_RUSSELL:
               §§push(-2067646556 ^ 0x49E9E408 ^ -929670649 ^ 0x05BD89AE);
               break;
            case _e42949745420bb5a55035b31.ENN_SAM:
               §§push(-41910250 ^ -1097125902 ^ -1550172631 ^ -528379445);
               break;
            case _e42949745420bb5a55035b31.ENN_VASILIY:
               §§push(0x25DB8987 ^ -726146332 ^ 0x05D6B1B5 ^ -189080879);
               break;
            default:
               §§push(-911678053 ^ 0x3FD7F086 ^ -159234830 ^ 0xFD51E7);
         }
         switch(§§pop())
         {
            case 0:
               _loc4_ = new _d86b61d6d1399ad1497966bc(param2,param3);
               break;
            case 1:
               _loc4_ = new _66d45834607e96de17d88bac(param2,param3);
               break;
            case 2:
               _loc4_ = new _2ac65491e9f4ed7fb73fa08d(param2,param3);
               break;
            case 3:
               _loc4_ = new _a521f21ed88d9691f08fef7a(param2,param3);
               break;
            case 4:
               _loc4_ = new _1d9d6706e4ef1124ff985b0c(param2,param3);
               break;
            case 5:
               _loc4_ = new _148201d0aaf2e528b61d20fe(param2,param3);
               break;
            case 6:
               _loc4_ = new _804112a2962e34631c68c5cf(param2,param3);
               break;
            case 7:
               _loc4_ = new _9f2e12d55854c07602d24526(param2,param3);
               break;
            default:
               _loc4_ = new _ba120ae720a391732e866217(param2,param3);
         }
         _loc4_.npcName = param1;
         return _loc4_;
      }
   }
}

