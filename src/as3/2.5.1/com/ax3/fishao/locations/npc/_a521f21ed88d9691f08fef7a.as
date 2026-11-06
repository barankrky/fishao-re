package com.ax3.fishao.locations.npc
{
   import com.ax3.fishao._76ac3cbeb9fd4ac17f1da4f1;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations._3e7dee0195ecd6b652b730f1;
   import com.ax3.fishao.locations.chars._8b5edf1c1de2751d1bc6fca0;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   
   public class _a521f21ed88d9691f08fef7a extends _ba120ae720a391732e866217
   {
      
      private var _858094a1d54c568024f231da:_8b5edf1c1de2751d1bc6fca0;
      
      public function _a521f21ed88d9691f08fef7a(param1:_810c4ade948afb64e9c7ee25, param2:_3e7dee0195ecd6b652b730f1)
      {
         super(param1,param2);
      }
      
      override public function _13b29a0b45bcfef2fe05674b(param1:String, param2:Object) : void
      {
         var _loc3_:String = param1;
         switch(_76ac3cbeb9fd4ac17f1da4f1.ENA_OPEN_DIALOG_WHEEL_OF_FORTUNE === _loc3_ ? -2014356963 ^ 0x0D058298 ^ -1454374893 ^ 0x23BAD896 : -402376130 ^ 0x3BDA00D8 ^ -1641919891 ^ 0x4DFC708A)
         {
            case 0:
               this._858094a1d54c568024f231da = moveStrategy;
               moveStrategy = _freezeMovementStrategy;
               this.dialogStep = -1463768710 ^ 0x0471CC3F ^ 0x3BD34ECD ^ -1755174008;
               _37496d81243d975a8f2daa70();
               GameSwf.instance.managerWheelOfFortune.getInfo();
               break;
            default:
               super._13b29a0b45bcfef2fe05674b(param1,param2);
         }
      }
   }
}

