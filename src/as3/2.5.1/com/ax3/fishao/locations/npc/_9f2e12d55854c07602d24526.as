package com.ax3.fishao.locations.npc
{
   import com.ax3.fishao._76ac3cbeb9fd4ac17f1da4f1;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations._3e7dee0195ecd6b652b730f1;
   import com.ax3.fishao.locations.chars._8b5edf1c1de2751d1bc6fca0;
   import com.ax3.fishao.locations.npc.base._95e09934be04b5ca92831e4b;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.view.dialogs.trade.model._3f231537217a2498942b645b;
   
   public class _9f2e12d55854c07602d24526 extends _ba120ae720a391732e866217
   {
      
      private var _facf072654a50a3dc9e2cb14:_8b5edf1c1de2751d1bc6fca0;
      
      public function _9f2e12d55854c07602d24526(param1:_810c4ade948afb64e9c7ee25, param2:_3e7dee0195ecd6b652b730f1)
      {
         super(param1,param2);
      }
      
      override public function _13b29a0b45bcfef2fe05674b(param1:String, param2:Object) : void
      {
         var _loc3_:String = param1;
         switch(_76ac3cbeb9fd4ac17f1da4f1.ENA_OPEN_DIALOG_TRADE === _loc3_ ? -317140714 ^ -790635032 ^ 0x5AEB4411 ^ 0x672C48EF : 0x1BF2EA52 ^ -1148862980 ^ 0x1265DF2C ^ -1307408253)
         {
            case 0:
               this._facf072654a50a3dc9e2cb14 = moveStrategy;
               moveStrategy = _freezeMovementStrategy;
               _37496d81243d975a8f2daa70();
               GameSwf.instance.managerTrade._60019a144b136cb1a56690b2(npcName,_3f231537217a2498942b645b.ETT_NPC);
               break;
            default:
               super._13b29a0b45bcfef2fe05674b(param1,param2);
         }
      }
      
      public function _b01a12ec2b96dd3bd0c01cf1() : void
      {
         moveStrategy = this._facf072654a50a3dc9e2cb14;
         onStartTalk(this);
         _dfa25706e58a240c1e33e5c6.locationExtension._abd393c870e6d7f9e4acc6dd(npcName,position,0x4DF0009F ^ -1737167802 ^ 0x5752E305 ^ -2099900450,_95e09934be04b5ca92831e4b.ENA_YES);
      }
      
      public function _f2497c6d9aa1918beff4194b() : void
      {
         moveStrategy = this._facf072654a50a3dc9e2cb14;
         onStartTalk(this);
         _dfa25706e58a240c1e33e5c6.locationExtension._abd393c870e6d7f9e4acc6dd(npcName,position,-726459883 ^ 0x17AEF93E ^ 0x0B4062C1 ^ -933395992,_95e09934be04b5ca92831e4b.ENA_NO);
      }
   }
}

