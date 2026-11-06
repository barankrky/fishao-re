package com.ax3.fishao.view.dialogs.collections.model
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   
   public class _41a9abfb978f97e8ad1af3f2
   {
      
      public function _41a9abfb978f97e8ad1af3f2()
      {
         super();
      }
      
      public static function _a046bd55843ecee97de21baa(param1:Object) : _a9131e6257bb33cc49417f53
      {
         var _loc2_:_a9131e6257bb33cc49417f53 = null;
         switch(param1[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勶剧剾勠勲勈勈劎労励刎剂勯勍刺勬","分劐刬刍刧劂刳副劙剬刍劶勇剪剈劗")])
         {
            case _5cb7e8cda98002c92e2581b2.ECT_CATCH_ALL_FISHES_AT_LOCATION:
               §§push(0x5D703B99 ^ 0x06A02A93 ^ -195487301 ^ -1349973839);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_CATCH_ALL_FISHES_WITH_NAME:
               §§push(-2055748851 ^ 0x70210AC5 ^ -235826345 ^ 0x04A75A9E);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_CATCH_ALL_FISHES_WITH_TYPE:
               §§push(-71253909 ^ 0x6AD28F36 ^ -1800914630 ^ 0x05BA7665);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_COLLECT_FURNITURE:
               §§push(-514425920 ^ 0x29B13D76 ^ -574813959 ^ 0x155A4E4C);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_FURNITURE_FACTORY:
               §§push(-1468461682 ^ 0x5145B923 ^ -583286233 ^ 0x2407768E);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_CATCH_SHINY_FISH_WITH_TYPE:
               §§push(0x369E8577 ^ 0x500CFE44 ^ 0x185EDD8B ^ 0x7ECCA6BD);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_COLLECT_FOSSILS:
               §§push(-642189390 ^ -1543637454 ^ 0x5529C5C7 ^ 0x2F6CC441);
               break;
            case _5cb7e8cda98002c92e2581b2.ECT_CRUSH_FRUITS:
               §§push(0x333BF24D ^ -1009690318 ^ 0x78E3E4F7 ^ -2012655729);
               break;
            default:
               §§push(0x264FAC35 ^ 0x63A3EF52 ^ -888575302 ^ -1897584171);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = new _723ddef9a8a0b9d9bdb5742d();
               break;
            case 1:
            case 2:
               _loc2_ = new _2dd871935d6aca0919f1f017();
               break;
            case 3:
               _loc2_ = new _f88d484fa59ad7860c53c4af();
               break;
            case 4:
               _loc2_ = new _20a707c3c4612b43a4b84433();
               break;
            case 5:
               _loc2_ = new _bc0567a58a793704e8183db0();
               break;
            case 6:
               _loc2_ = new _cdafbd1204a18aca5ceac98d();
               break;
            case 7:
               _loc2_ = new _600c0cd06cacdafbe8b4f571();
               break;
            default:
               Debug.assert(false);
         }
         _loc2_.deserialize(param1);
         return _loc2_;
      }
   }
}

