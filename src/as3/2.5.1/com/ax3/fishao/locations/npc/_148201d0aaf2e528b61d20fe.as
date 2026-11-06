package com.ax3.fishao.locations.npc
{
   import com.ax3.fishao._76ac3cbeb9fd4ac17f1da4f1;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations._3e7dee0195ecd6b652b730f1;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import flash.events.Event;
   
   public class _148201d0aaf2e528b61d20fe extends _ba120ae720a391732e866217
   {
      
      public function _148201d0aaf2e528b61d20fe(param1:_810c4ade948afb64e9c7ee25, param2:_3e7dee0195ecd6b652b730f1)
      {
         super(param1,param2);
      }
      
      override public function _13b29a0b45bcfef2fe05674b(param1:String, param2:Object) : void
      {
         var _loc3_:String = param1;
         switch(_76ac3cbeb9fd4ac17f1da4f1.ENA_OPEN_DIALOG_FURNITURE_FACTORY === _loc3_ ? -2104226363 ^ -481550513 ^ 0x2D5835C7 ^ 0x4C80274D : 0x51A6D236 ^ 0x67D782A7 ^ 0x1110CDB0 ^ 0x27619D20)
         {
            case 0:
               _0737efdbd5337ba3fbc64b2e.LOADING_SCREEN._488967ac047893d375c28607();
               npcDialog.close();
               GameSwf.instance.managerFurnitureFactory.getInfo();
               break;
            default:
               super._13b29a0b45bcfef2fe05674b(param1,param2);
         }
      }
      
      override protected function _58f0b8852995b42532b1552e(param1:Event) : void
      {
         super._58f0b8852995b42532b1552e(param1);
         GameSwf.instance.managerFurnitureFactory.getInfo();
      }
   }
}

