package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.wrappers.impl._6b91a781d828662e84e05553;
   import com.ax3.fishao.view.wrappers.impl._e63cfaa74949a39494ed2b0b;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class _420ce372288abcd3f4c3e522 extends _8071087ebe26c264282580d0
   {
      
      public var africa:_e63cfaa74949a39494ed2b0b;
      
      public var asia:_e63cfaa74949a39494ed2b0b;
      
      public var desert:_e63cfaa74949a39494ed2b0b;
      
      public var port:_e63cfaa74949a39494ed2b0b;
      
      public var grass:_e63cfaa74949a39494ed2b0b;
      
      public var nordic:_e63cfaa74949a39494ed2b0b;
      
      public var pole:_e63cfaa74949a39494ed2b0b;
      
      public var rainforest:_e63cfaa74949a39494ed2b0b;
      
      public var marsh:_e63cfaa74949a39494ed2b0b;
      
      public var tropicalBeach:_e63cfaa74949a39494ed2b0b;
      
      public var palmIsland:_e63cfaa74949a39494ed2b0b;
      
      public var luckyRaft:_e63cfaa74949a39494ed2b0b;
      
      public var frame:MovieClip;
      
      public var world:MovieClip;
      
      public var title:_6b91a781d828662e84e05553;
      
      public var lockedOverFilters:MovieClip;
      
      public var unlockedOverFilters:MovieClip;
      
      public var lockedFilters:MovieClip;
      
      public var unlockedFilters:MovieClip;
      
      protected var _filters:Object = {};
      
      private var _3a1122563322fde0c99639ac:Point = new Point(-1497179393 ^ 0x368FE48D ^ 0x79D097F8 ^ -375543126,-2045078271 ^ -2069719559 ^ -1429291205 ^ -1468613221);
      
      public function _420ce372288abcd3f4c3e522()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("აႧႁၙယვၥႦၛეၪႨჄჟ႘ႅႀၫႆဟၛლာ၂ၖႫဧဝယ႞ႯႨေჵဲ႟ၹရ႖ဖၗ၁်ဋძသუაၓ႔","ဒၓზႂႢზფၾხႎ၆ჱႸშჭხ");
         super(_loc1_);
         _canClosedByEsc = false;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         this._5e6d63714de0295d30b17aca();
      }
      
      override protected function _d998e9465b31be9894488c29(param1:DisplayObjectContainer) : void
      {
         param1.visible = false;
         super._d998e9465b31be9894488c29(param1);
      }
      
      override protected function _ade64bcffa906dd9fa397567(param1:Event) : void
      {
         super._ade64bcffa906dd9fa397567(param1);
         var _temp_2:* = this;
         var _temp_1:* = -97814652 ^ -1036001384 ^ -763350223 ^ -359359699;
         _temp_2._3d35206e41147b98a9825d65(_temp_1,_temp_1,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         _asset.visible = true;
      }
      
      public function _5e6d63714de0295d30b17aca() : void
      {
         var _loc1_:int = -2028672509 ^ 0x5A391D14 ^ -1831296889 ^ -302972092;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x7E2F7033 ^ 0x6827C9F9 ^ -1596657471 ^ 0x14D81DDD))
            {
               case 0:
                  return;
               case 1:
                  this.title.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剔勲刖剈剁剈利勘劐刍刷勄刀劾劚刚勷剬剄剩刲劲劘剑劼劖刪勁勼剀動勣勓創分劲","力刭劬勣劕劖勅則力剽剬劣刿劗劶募"));
                  var _temp_2:* = this;
                  var _temp_1:* = 0x4BC668F4 ^ 0x70EABD7C ^ 0x4084E895 ^ 0x7BA83D1D;
                  _temp_2._3d35206e41147b98a9825d65(_temp_1,_temp_1,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
                  return;
               case 2:
                  if(this.title == null)
                  {
                     _loc1_ = 0x75857BEF ^ 0x52DF40D1 ^ -547168808 ^ 0x5A3CB230;
                  }
                  else
                  {
                     _loc1_ = 0x3A86FD11 ^ 0x0450DF58 ^ -1137093130 ^ 0x20EB2368;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _3d35206e41147b98a9825d65(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:Number = NaN;
         if(this.world != null && this._3a1122563322fde0c99639ac != null)
         {
            _loc5_ = Math.min(param3 / this._3a1122563322fde0c99639ac.x,param4 / this._3a1122563322fde0c99639ac.y);
            this.world.scaleX = this.world.scaleY = _loc5_;
            this.world.x = param1 + (param3 - this._3a1122563322fde0c99639ac.x * _loc5_) * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捀振掻捏捘揞挰挱揾挠揺挕揻捫按揸揅掮掣掭揂挼捩挐","捒揁挝揼揭捻挢掁挸揈掑捒捜捁挌挟");
            this.world.y = param2 + (param4 - this._3a1122563322fde0c99639ac.y * _loc5_) * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掔掓捓捘捨持挜捤揜措挥揶揱掻掮挏揥挭掦捶捼捏揗掝","捤挭挞揝挊掇挤掁捗掇挷挑掷揹挏掼");
            this.frame.width = param3 + (-754897003 ^ -1263535900 ^ -314960933 ^ -1969961824);
            this.frame.height = param4 + (-17638226 ^ -1377679342 ^ -1199219364 ^ -342504980);
            this.title.x = (param3 - this.title.width) * _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劺剒剧勪劃利劶勞劬刽勻勸勈勊劌動剀劄刖劸剼効刳勵","剥剁効務勂勬勘勯刾到刍劽劈剀勳勋");
         }
      }
      
      override public function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.x = 0x5EF74413 ^ -872627060 ^ -1070678474 ^ 0x55253EA9;
         this.y = 0x051C3768 ^ 0x76E91807 ^ 0x4CFC489A ^ 0x3F0967F5;
         this._3d35206e41147b98a9825d65(param1,param2,param3,param4);
      }
   }
}

