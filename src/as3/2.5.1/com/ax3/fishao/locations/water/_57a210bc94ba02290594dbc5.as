package com.ax3.fishao.locations.water
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.Leaf1;
   import assets.common.Leaf2;
   import assets.common.Leaf3;
   import assets.common.Leaf4;
   import assets.common.Leaf5;
   import assets.common.Leaf6;
   import assets.common.Leaf7;
   import assets.common.Leaf8;
   import com.ax3.utils.math.randomRange;
   import com.inkora.tween.TweenCube;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class _57a210bc94ba02290594dbc5 extends Bitmap
   {
      
      private static var _1140e8836bee80dd76938acc:Vector.<BitmapData> = new <BitmapData>[new Leaf1(),new Leaf2(),new Leaf3(),new Leaf4(),new Leaf5(),new Leaf6(),new Leaf7(),new Leaf8()];
      
      private var _d62e4bf2c3597ff27995a5e0:Vector.<Rectangle>;
      
      private var _ded61648815c44edd123f578:Number;
      
      private const _ba052f381e7399951ab081c9:Number = 20;
      
      public function _57a210bc94ba02290594dbc5()
      {
         super();
         this._ef61a2c4fc4024c5316c25e7();
      }
      
      private function _ef61a2c4fc4024c5316c25e7() : void
      {
         bitmapData = _1140e8836bee80dd76938acc[randomRange(-1142846179 ^ 0x7A49EDC7 ^ 0x6FC75F9C ^ -1368441018,_1140e8836bee80dd76938acc.length - 1)];
      }
      
      public function _6dc79145cb986d7de1fad6a6(param1:Vector.<Rectangle>) : void
      {
         this._d62e4bf2c3597ff27995a5e0 = param1;
         this._369aa658141e54a140bb525c();
      }
      
      private function _369aa658141e54a140bb525c() : void
      {
         var _loc1_:Number = randomRange(0x0F62416F ^ 0x03CA80FE ^ 0x52DCD11D ^ 0x5E74108C,this._d62e4bf2c3597ff27995a5e0.length - 1);
         var _loc2_:Rectangle = this._d62e4bf2c3597ff27995a5e0[_loc1_];
         x = int(_loc2_.x + randomRange(0x5CBB1086 ^ -680795359 ^ 0x41B7DA63 ^ -899208764,_loc2_.width));
         y = int(_loc2_.y);
         this._ded61648815c44edd123f578 = _loc1_;
         this._cdda6fff29fcc323c3ee8012();
      }
      
      private function _cdda6fff29fcc323c3ee8012() : void
      {
         var _loc1_:Rectangle = null;
         var _loc2_:Point = null;
         var _loc3_:Number = NaN;
         ++this._ded61648815c44edd123f578;
         if(this._d62e4bf2c3597ff27995a5e0 != null)
         {
            if(this._ded61648815c44edd123f578 < this._d62e4bf2c3597ff27995a5e0.length)
            {
               _loc1_ = this._d62e4bf2c3597ff27995a5e0[this._ded61648815c44edd123f578];
               _loc2_ = new Point(randomRange(_loc1_.x,_loc1_.x + _loc1_.width - bitmapData.width),_loc1_.y);
               _loc3_ = Math.sqrt((_loc2_.x - x) * (_loc2_.x - x) + (_loc2_.y - y) * (_loc2_.y - y));
               TweenCube.to(this,_loc3_ / this._ba052f381e7399951ab081c9 * ((-258958835 ^ -1965269649 ^ -1668059990 ^ -421549111) + randomRange(_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捣掛探捬提捛捠揞挴掠挆掼掮挴掮挫揫捶掞捏捱捧揎掌","挆捵捙挽揺掜措掰捍掱揭捭挲挜挷掇"),_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挲揯捏控挴揭揢措捬提捠挗捾挥捸揌挄揤掠挎掿掏揣挫","捙揊掂授挫揉揹掯捚捸捑挿挍捆捨捏"))),{
                  (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("别刵刱勭剙刴勏刋刋刚","剂劣剜勌勘劅勠刲剙剄剥刂剐别劜劸")):_loc2_.x,
                  (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႽႠ၉ქ჊ဠႶႎစღ","ဌၾჃႚၷ၈ဳ჆ဘူၦႻჅၳှ჊")):_loc2_.y
               },{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("创勲刟刀刄剪勻効删劲制剷刼剴剾剉判剥剚勎剺勬刨列刊则动剋","劑刼劶力刳勬刷勆劧勡刌刷勤剡勄劙")):this._cdda6fff29fcc323c3ee8012});
            }
            else
            {
               this._ded61648815c44edd123f578 = -1869066273 ^ 0x079878D2 ^ 0x0E8101C5 ^ -1719585080;
               _loc1_ = this._d62e4bf2c3597ff27995a5e0[this._ded61648815c44edd123f578];
               x = int(_loc1_.x + randomRange(-13550882 ^ 0x74ACF8EA ^ 0x38B3F694 ^ -1288817504,_loc1_.width - bitmapData.width));
               y = int(_loc1_.y);
               alpha = 0x11610DA4 ^ 0x37D45B79 ^ -2061293176 ^ -1550418091;
               TweenCube.to(this,-1333607960 ^ 0x44185584 ^ 0x4763DB7A ^ -1275506921,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჯီჿဳၭပဠ჊ဆ်ၽၚၗ၃ၿႺბၦ","Ⴝဍကგბဵ႐းႯႁႬჴၩჄႼၲ")):-512070569 ^ 0x3A080036 ^ 0x741838E5 ^ -1351986043});
               this._cdda6fff29fcc323c3ee8012();
            }
         }
      }
      
      public function update(param1:uint, param2:uint) : void
      {
      }
      
      public function destroy() : void
      {
         this._d62e4bf2c3597ff27995a5e0 = null;
      }
   }
}

