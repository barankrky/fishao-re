package com.ax3.fishao.tutorial.helpers.masks
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.junkbyte.console.Cc;
   import flash.geom.Point;
   
   public class _ac86c30083c7e7aa58281afd extends _ed4aae3a7e33ca2ee825d7ff
   {
      
      private var _160dd83162e23ddf5632c944:Function;
      
      private var _8e084b00ac100dba6e4b204a:Point;
      
      public function _ac86c30083c7e7aa58281afd()
      {
         super();
      }
      
      public function set functionGetSize(param1:Function) : void
      {
         this._160dd83162e23ddf5632c944 = param1;
      }
      
      public function get lastSize() : Point
      {
         return this._8e084b00ac100dba6e4b204a;
      }
      
      override public function update() : void
      {
         _lastPosition = _functionGetPosition() as Point;
         this._8e084b00ac100dba6e4b204a = this._160dd83162e23ddf5632c944() as Point;
         if(_lastPosition != null && this._8e084b00ac100dba6e4b204a != null)
         {
            _maskView.graphics.clear();
            _maskView.graphics.beginFill(0x0F8C4E7A ^ -1907626461 ^ 0x6DE8E508 ^ -332446383);
            var _temp_7:* = _maskView.graphics;
            var _temp_6:* = _lastPosition.x;
            var _temp_5:* = _lastPosition.y;
            var _temp_4:* = this._8e084b00ac100dba6e4b204a.x;
            var _temp_3:* = this._8e084b00ac100dba6e4b204a.y;
            var _temp_2:* = -197526794 ^ -1369803138 ^ -210916994 ^ -1458690564;
            _temp_7.drawRoundRect(_temp_6,_temp_5,_temp_4,_temp_3,_temp_2,_temp_2);
            _maskView.graphics.endFill();
         }
         else
         {
            Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刭则勊勜刭劭刿勰劒剫剂刅劇剘剺券劧剕勻刚剽刌勋刔削勀勒勔勒勗勧办剪勭刀刌前勸制劸力劰剀勝勶劐刁办剫勈刮剳剰剚","勡刨勁到劮務刴刉剥劋勲勀剸剉动剮") + this._8e084b00ac100dba6e4b204a == null);
            Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揬挳捷揧挼挡掰揝插掅掂挞掂揍掦挼揸揗揀挄掓捍揤挡挀捎掕挦振捜揙挭挪揔捃挈按捥揻掹捅揆捘揠揪揱挞掆掽挴挍掐揩掗捈揱揟掌掶捘挼揭","揇掼掸揦捁捝捫揉捈捋挷掽揍揜捧挆") + _lastPosition == null);
         }
      }
   }
}

