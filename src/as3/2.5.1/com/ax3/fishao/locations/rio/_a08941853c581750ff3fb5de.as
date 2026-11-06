package com.ax3.fishao.locations.rio
{
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class _a08941853c581750ff3fb5de extends _67f8febc099eaa05c48aa41e
   {
      
      private var _3f9428c4d89baa4ff8e06269:_de00f89231bcfcd042af6bc5;
      
      private var _2261728fc47bc2067e8b2ce8:_0a3b7f9e9c67be2ea3c24a8a;
      
      public function _a08941853c581750ff3fb5de(param1:_4039c287ddb4ef46ab65ab0e)
      {
         this._2261728fc47bc2067e8b2ce8 = param1 as _0a3b7f9e9c67be2ea3c24a8a;
         super(param1);
      }
      
      override public function _b24937139cc44ffe53f7fc23(param1:Number, param2:Number, param3:_08c120b706560fce9302bcab = null) : Boolean
      {
         var _loc4_:Boolean = super._b24937139cc44ffe53f7fc23(param1,param2,param3);
         return _loc4_ || this._3f9428c4d89baa4ff8e06269.viewWaterfallCave != null && this._3f9428c4d89baa4ff8e06269.viewWaterfallCave.hitTest(param1,param2,false);
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
         this._2261728fc47bc2067e8b2ce8._0efccb9dd7d6bf42881e653a();
      }
      
      override protected function _3536e00a076cf84463e9eaaa() : _bd60f9ad6ef4aaf28041ce8f
      {
         this._3f9428c4d89baa4ff8e06269 = super._3536e00a076cf84463e9eaaa() as _de00f89231bcfcd042af6bc5;
         return this._3f9428c4d89baa4ff8e06269;
      }
      
      override public function updateWithType(param1:String) : void
      {
         if(!_locationLoadComplete)
         {
            return;
         }
         var _loc2_:String = param1;
         switch(_6b63fd0a4028eb279b227831.ECU_FEATURE_TEMPORARY_WATERFALL_CAVE_UPDATED === _loc2_ ? 0x13D5BA18 ^ 0x42CF820B ^ 0x1ADC4A ^ 0x5100E459 : -1555716107 ^ 0x2B287FA3 ^ 0x4393711F ^ -872502968)
         {
            case 0:
               this._2261728fc47bc2067e8b2ce8._0efccb9dd7d6bf42881e653a();
               break;
            default:
               super.updateWithType(param1);
         }
      }
      
      override public function _d884928dd68180fa7fdbb4e7(param1:int) : void
      {
         var _loc2_:int = -913670563 ^ 0x4D44DD7C ^ -701139390 ^ 0x2E6A66FD;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-818681302 ^ 0x6E32291E ^ -424380629 ^ 0x3B240783))
            {
               case 0:
                  if(param1 == (0x661F3B24 ^ -1912784350 ^ 0x852998 ^ -345560818))
                  {
                     _loc2_ = 0x75BC6617 ^ 0x24BCE646 ^ 0x40D62FE7 ^ 0x6D471C29;
                  }
                  else
                  {
                     _loc2_ = -339009493 ^ -1180419393 ^ -1180407449 ^ -1755660183;
                  }
                  break;
               case 1:
                  _16bdb56d599c22bb9eebc6e3(new Point(-528641160 ^ 0x1400FFB4 ^ 0x2F02DE10 ^ -612386400,-2077244767 ^ 0x5F363B9E ^ 0x7336FC54 ^ -1473313739));
                  _loc2_ = 0x34766771 ^ -1931910212 ^ 0x1AF902DE ^ -557337205;
                  break;
               case 2:
                  if(player == null)
                  {
                     _loc2_ = -203512919 ^ 0x2FDF4D32 ^ -1963798634 ^ 0x2A629294;
                  }
                  else
                  {
                     _loc2_ = -111170879 ^ 0x4A6007CB ^ -811221877 ^ 0x0BA21D;
                  }
                  break;
               case 3:
                  _16bdb56d599c22bb9eebc6e3(new Point(0x12AEB5C0 ^ -489298330 ^ 0x4C50DE51 ^ -1137999601,0x2E4DB801 ^ -1923087858 ^ 0x41A998D4 ^ -494656635));
                  _loc2_ = 0x3EC70CA5 ^ 0x15FAAC50 ^ 0x5D16BB1A ^ 0x0ABAA877;
                  break;
               case 4:
                  GameSwf.instance.needSetPositionAfterExitVirtualLocation = false;
                  return;
               case 5:
                  return;
               case 6:
                  if(param1 == (-1050225977 ^ 0x4671BD1F ^ 0x78E44E8B ^ -843649))
                  {
                     _loc2_ = -542362137 ^ 0x59A62128 ^ -992298695 ^ 0x3E411E6B;
                  }
                  else
                  {
                     _loc2_ = 0x60A58E70 ^ -973843325 ^ 0x72F6242A ^ -1422504639;
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

