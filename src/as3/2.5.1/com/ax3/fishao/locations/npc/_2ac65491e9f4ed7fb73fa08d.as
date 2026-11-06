package com.ax3.fishao.locations.npc
{
   import com.ax3.fishao._76ac3cbeb9fd4ac17f1da4f1;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations._3e7dee0195ecd6b652b730f1;
   import com.ax3.fishao.locations.chars._8b5edf1c1de2751d1bc6fca0;
   import com.ax3.fishao.locations.npc.base._95e09934be04b5ca92831e4b;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.fruits.model._028a738681ce8ab1a6cc5b00;
   
   public class _2ac65491e9f4ed7fb73fa08d extends _ba120ae720a391732e866217
   {
      
      private var _d1886c3e3796d777da0b3f9e:_8b5edf1c1de2751d1bc6fca0;
      
      public function _2ac65491e9f4ed7fb73fa08d(param1:_810c4ade948afb64e9c7ee25, param2:_3e7dee0195ecd6b652b730f1)
      {
         super(param1,param2);
      }
      
      override public function _13b29a0b45bcfef2fe05674b(param1:String, param2:Object) : void
      {
         var _loc3_:_028a738681ce8ab1a6cc5b00 = null;
         var _loc4_:String = param1;
         switch(_76ac3cbeb9fd4ac17f1da4f1.ENA_OPEN_DIALOG_FRUITS_CRUSH === _loc4_ ? -363274325 ^ 0x54E13E84 ^ -872832141 ^ 0x7540425C : 0x7619A86B ^ -382047282 ^ 0x2BAE7C53 ^ -1265778697)
         {
            case 0:
               this._d1886c3e3796d777da0b3f9e = moveStrategy;
               moveStrategy = _freezeMovementStrategy;
               _37496d81243d975a8f2daa70();
               _loc3_ = app.dialogFactory._ba4cd2085a4684ac9f5802c3();
               _loc3_.show();
               break;
            default:
               super._13b29a0b45bcfef2fe05674b(param1,param2);
         }
      }
      
      public function _5eb33198cda4854331dfde0b() : void
      {
         moveStrategy = this._d1886c3e3796d777da0b3f9e;
         onStartTalk(this);
         _dfa25706e58a240c1e33e5c6.locationExtension._abd393c870e6d7f9e4acc6dd(npcName,position,0x5F2C219E ^ -1316012937 ^ -679236845 ^ 0x3920B6F8,_95e09934be04b5ca92831e4b.ENA_NO);
      }
      
      public function _48c043ef83a615b9cb135f98() : void
      {
         moveStrategy = this._d1886c3e3796d777da0b3f9e;
         onStartTalk(this);
         _dfa25706e58a240c1e33e5c6.locationExtension._abd393c870e6d7f9e4acc6dd(npcName,position,0x174D217B ^ 0x0E196BC5 ^ 0x3DE05902 ^ 0x24B413BE,_95e09934be04b5ca92831e4b.ENA_YES);
      }
   }
}

