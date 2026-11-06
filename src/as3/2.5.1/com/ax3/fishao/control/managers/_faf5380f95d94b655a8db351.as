package com.ax3.fishao.control.managers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.core._8456759d89f0c8868eb7daca;
   import com.ax3.fishao.utils.TransparentClickUtil;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class _faf5380f95d94b655a8db351
   {
      
      public static const LOCK:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၲფ၅ႫႳქၳဳႇ႟ဘძ႖჻ဗဎႠၧ၉႞","ფၽဨოၶႣညჼလႜ၂Ⴗအჟၰီ");
      
      public static const FISH:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捰捍捡掁揯捍挖揫掭捂捄掕挭捝掾揣掃揊挏掳掗掇","揳掕措掕揀捽揚揰挑揸援掓掣掴挭掮");
      
      public static const STAGE:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捦捽掎捉掎掠掶捂揙揸挙挻捫掦揧挨","描排捬挦捹挅揕挦掻捒持揢推掆挶捁");
      
      public static const WAITING:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捚挲揆挊掏掣揓捶掉捯捵揹揨捪捜掛提掬捁挾揠挜","掂掱捝挮挴揿揫揋捳掖挺揽揿挋捍捵");
      
      public function _faf5380f95d94b655a8db351()
      {
         super();
      }
      
      private static function _7c5ae900b2f73cfc75709a4e(param1:Class) : Vector.<BitmapData>
      {
         var _loc2_:Bitmap = new param1() as Bitmap;
         var _loc3_:Matrix = new Matrix();
         if(_loc2_.width > _loc2_.height)
         {
            _loc2_.width = -2140186984 ^ 0x4AA74533 ^ 0x53988D64 ^ -1722769681;
            _loc2_.scaleY = _loc2_.scaleX;
         }
         else
         {
            _loc2_.height = 0x179ED4A4 ^ -1278484321 ^ 0x35DE0807 ^ -1853146084;
            _loc2_.scaleX = _loc2_.scaleY;
         }
         _loc3_.scale(_loc2_.scaleX,_loc2_.scaleY);
         var _loc4_:BitmapData = new BitmapData(_loc2_.width,_loc2_.height,true,0x107D4AAC ^ -1008200246 ^ -941434328 ^ 0x1477854E);
         _loc4_.draw(_loc2_,_loc3_,null,null,null,true);
         var _loc5_:Vector.<BitmapData> = new Vector.<BitmapData>(0x3EA11125 ^ -57995495 ^ -2060566890 ^ 0x470420AB,true);
         _loc5_[0x4F7D59B4 ^ -185630923 ^ -23441943 ^ 0x45086B68] = _loc4_;
         return _loc5_;
      }
      
      public static function init(param1:Stage) : void
      {
      }
      
      private static function _f04107a39dead20ab95e2ea7(param1:MouseEvent) : void
      {
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         var _loc3_:int = int(param1.currentTarget.mouseX);
         var _loc4_:int = int(param1.currentTarget.mouseY);
         _10a4602799eeae683e203028(_loc2_);
      }
      
      private static function _10a4602799eeae683e203028(param1:DisplayObject) : void
      {
         var _loc2_:_8456759d89f0c8868eb7daca = null;
         if(_d7fb4474ea85af775bb76c76(param1))
         {
            _loc2_ = _8456759d89f0c8868eb7daca(param1);
            if(TransparentClickUtil.isHitOnObject(DisplayObject(param1)))
            {
               _d170d4ddffee6ded36a9e867(_loc2_._a1a668e8856e6cdb006ace10());
            }
            else if(!TransparentClickUtil.doOtherInteractiveObjects(param1 as DisplayObject,_d7fb4474ea85af775bb76c76,_f495a6837197e04e3c3b5905,_10a4602799eeae683e203028))
            {
               _d170d4ddffee6ded36a9e867(STAGE);
            }
         }
         else
         {
            _d170d4ddffee6ded36a9e867(STAGE);
         }
      }
      
      private static function _d7fb4474ea85af775bb76c76(param1:DisplayObject) : Boolean
      {
         return param1 is _8456759d89f0c8868eb7daca;
      }
      
      private static function _f495a6837197e04e3c3b5905(param1:DisplayObject) : Boolean
      {
         return false;
      }
      
      private static function _d170d4ddffee6ded36a9e867(param1:String) : void
      {
         var type:String = param1;
         if(Mouse.cursor == type)
         {
            return;
         }
         try
         {
            Mouse.cursor = type;
         }
         catch(e:ArgumentError)
         {
            Mouse.cursor = MouseCursor.AUTO;
         }
      }
   }
}

