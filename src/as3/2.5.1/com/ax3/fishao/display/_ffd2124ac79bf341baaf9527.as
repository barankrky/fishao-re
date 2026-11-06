package com.ax3.fishao.display
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class _ffd2124ac79bf341baaf9527 extends _b61f883bdc804cf4115fe314
   {
      
      private var _a5cec0196a3db7e12d576500:DisplayObjectContainer;
      
      private var _c8d0c29c71f3690858119c16:TextField;
      
      public function _ffd2124ac79bf341baaf9527()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         handler = null;
         this._a5cec0196a3db7e12d576500 = DisplayObjectContainer((_asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挂捰掩掲揜掟掕挽捽挑挝捚揋揆探描","揦捒挞捨揞揉挳揾挼揞捇换掟掂挔捄")) as DisplayObjectContainer).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("労勛分勴劕剰剱勰剅勸剰刜刏刣劕劉刬劚勽劌","初剗势劍助剶初刡勖劫勅努務剹劫勦")));
         this._c8d0c29c71f3690858119c16 = TextField(this._a5cec0196a3db7e12d576500.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("別劕勊劼劭劈劐劺剠勎勴劌勤别劓刡劮劻","刑劤劚剎勎到刼劅勧勍刊务剱劍剶分")));
      }
      
      public function set amount(param1:int) : void
      {
         var _loc2_:int = 0x36CF8544 ^ 0x5A484000 ^ 0x31F12489 ^ -2121997106;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1150432329 ^ 0x1B85F5B9 ^ -1646542315 ^ -507381478))
            {
               case 0:
                  this._a5cec0196a3db7e12d576500.visible = false;
                  _loc2_ = -1575166605 ^ -781130000 ^ 0x78C29683 ^ -681793534;
                  break;
               case 1:
                  this._a5cec0196a3db7e12d576500.visible = true;
                  this._c8d0c29c71f3690858119c16.text = String(limit(param1,-597913070 ^ -825197053 ^ -853559311 ^ -543990815,-197323804 ^ 0x1F4D95C9 ^ 0x7C2A5FD3 ^ -1755653731));
                  _loc2_ = 0x3EE4D6BA ^ 0x5BFE76DB ^ 0x3146D837 ^ -2001830572;
                  break;
               case 2:
                  if(param1 > (-1658851746 ^ 0x1245E5B8 ^ -1359090354 ^ 0x21A7E6A8))
                  {
                     _loc2_ = -387699537 ^ 0x3AACEA81 ^ -1504861417 ^ -1460182983;
                  }
                  else
                  {
                     _loc2_ = 0x68D3EC94 ^ -1574095853 ^ 0x46D5838A ^ 0x50D95E0C;
                  }
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

