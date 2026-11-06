package com.ax3.fishao.view.dialogs.club.pages.tournament.item
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.club.club_info_outside._c6dd57dd12cf02bae4594249;
   import com.ax3.fishao.view.dialogs.club.model._8a55e6919385386ebc54f870;
   import com.ax3.fishao.view.dialogs.club.model._f3277cf8667e55e52c907b59;
   import flash.events.Event;
   
   public class _d2aa40bd611bc55a28543881 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _a6aa59aa47e68880c969ebcd:_157e90da35b38626eab33194 = new _157e90da35b38626eab33194(this);
      
      private var _8c33e28a2f5971ab8f9bf7cd:Object;
      
      private var _bb8f67e6526b394c4cc6a89a:_8a55e6919385386ebc54f870;
      
      private var _9f56b431a81fe6e3d6861c0b:String;
      
      public function _d2aa40bd611bc55a28543881(param1:Object, param2:String)
      {
         super(this._a6aa59aa47e68880c969ebcd);
         this._9f56b431a81fe6e3d6861c0b = param2;
         this._8c33e28a2f5971ab8f9bf7cd = param1;
         this.init();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:_c6dd57dd12cf02bae4594249 = null;
         var _loc4_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc4_)
         {
            var _loc5_:Object = param1;
            switch(this._a6aa59aa47e68880c969ebcd === _loc5_ ? -1309715677 ^ 0x3F04C100 ^ -147247518 ^ 0x79D2BC41 : -1803681397 ^ 0x4B0A29BA ^ -920274124 ^ 0x16519304)
            {
               case 0:
                  _loc3_ = app.dialogFactory._a0d214350fb42da9f32557e6(_c6dd57dd12cf02bae4594249);
                  _loc3_.entity = this._bb8f67e6526b394c4cc6a89a;
                  _loc3_.show();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         this._a6aa59aa47e68880c969ebcd.tournamentType = this._9f56b431a81fe6e3d6861c0b;
         this._bb8f67e6526b394c4cc6a89a = new _8a55e6919385386ebc54f870();
         this._bb8f67e6526b394c4cc6a89a.deserialize(this._8c33e28a2f5971ab8f9bf7cd);
         this._a6aa59aa47e68880c969ebcd.emblemID = this._bb8f67e6526b394c4cc6a89a.emblemID;
         this._a6aa59aa47e68880c969ebcd.name = this._bb8f67e6526b394c4cc6a89a.name;
         this._a6aa59aa47e68880c969ebcd.position = Debug.assertProperty(this._8c33e28a2f5971ab8f9bf7cd,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勇剨制剪判勫刱勊勱剙刦勔刼勽剫劳刹勂勶勱劥刉勁剄","剀勖利劧勸勜刪務勋劽劉刚劢剁剦勛"));
         this._a6aa59aa47e68880c969ebcd._965feec4b02fdf3797d5afbf(this._9f56b431a81fe6e3d6861c0b,Debug.assertProperty(this._8c33e28a2f5971ab8f9bf7cd,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揶捙挿挓挹揪揦掆掹挒捲揑挐揦捵挘捲掂捙揙捆揪揝揪","掊挱捔掾掇捩捡掁掟捄捊捧揺揀掅挧")));
         this._a6aa59aa47e68880c969ebcd.reward = Debug.assertProperty(this._8c33e28a2f5971ab8f9bf7cd,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勅剃刀刏劽剭勐剮劫初勛努努勣剻刳初刪刂勂","劑制劭劷刟券剅勎删勦刾利勴劰刨功"));
         this._a6aa59aa47e68880c969ebcd.isCurrent = GameSwf.instance.managerClubs._b8d84096df59019d1d24ecdc(this._bb8f67e6526b394c4cc6a89a.ID);
         this._9c60ef8f3a03d85773694024();
      }
      
      private function _9c60ef8f3a03d85773694024() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = -1826563343 ^ -508563788 ^ -1044212024 ^ -1286757747;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = this._8c33e28a2f5971ab8f9bf7cd[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၗဋၿბსၢ႞Ⴢ჎ဧფ၈ှჟႸჲჼႵჄႮဧჯ","ဇးႯႾႆႰუၗ့႞ဟრၒွၓေ")];
         if(_loc5_ == null || _loc5_.length == (-906646939 ^ 0x313F44D6 ^ 0x60C16F05 ^ -1744076362))
         {
            return;
         }
         this._a6aa59aa47e68880c969ebcd._09d32aad035d4c6f4097c78b();
         var _loc6_:Array = [];
         _loc5_.sortOn(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挚捓捶掚振揌捀捜捑捬掎捸挕掤揗揪提揲揘捶揙指掄捑","挼捆挥掚捧捯掌捷掵挅捥挷挖捂挈掱"),Array.DESCENDING | Array.NUMERIC);
         switch(this._9f56b431a81fe6e3d6861c0b)
         {
            case _f3277cf8667e55e52c907b59.ETCT_CAUGHT_LARGEST_FISH:
               §§push(0x70802ED0 ^ -997136193 ^ 0x2C23E551 ^ -1741479106);
               break;
            case _f3277cf8667e55e52c907b59.ETCT_CAUGHT_LARGEST_CLUB_FISH:
               §§push(0x3FB63404 ^ 0x5AE23346 ^ 0x1DA2D515 ^ 0x78F6D256);
               break;
            case _f3277cf8667e55e52c907b59.ETCT_CAUGHT_LARGEST_FRESHWATER_FISH:
               §§push(0x25287215 ^ -375228442 ^ -2127475366 ^ 0x4DBB48AB);
               break;
            case _f3277cf8667e55e52c907b59.ETCT_CAUGHT_LARGEST_SALTWATER_FISH:
               §§push(0x4FE56420 ^ -43916170 ^ -709275339 ^ 0x673DD160);
               break;
            default:
               §§push(0x0BE8DB8A ^ 0x78B2D418 ^ 0x05E5DA40 ^ 0x76BFD5D6);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
            case 2:
            case 3:
               _loc5_ = [_loc5_[0x3E6BFF75 ^ -571405921 ^ -1287733745 ^ 0x50A448E5]];
               break;
            default:
               _loc5_.splice(-125423488 ^ 0x37208C1D ^ -991933864 ^ 0x0B46F6D1);
         }
         for each(_loc1_ in _loc5_)
         {
            _loc2_ = int(_loc1_[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("握掂捽掹掯振挞挱揽挂掁揫揷揓掋捷掾掸掼捖接掻捁捦","挤掛挜揜揪揲揷掚挥揈捾捅揶挷捆捾")]);
            _loc3_ = _loc1_[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挒揖捽掙插揮揨揹捓掋挸捲挕挓掙捓揌挽","掃挘捌挾掳捡揁掾捊捣挺掾揥揯揌揫")];
            _loc4_ = _f3277cf8667e55e52c907b59._03a5d24313eb53e37432ec70(this._9f56b431a81fe6e3d6861c0b,_loc2_);
            _loc6_.push(_loc3_ + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揾揈挕揀揿揟挒掗挱捸揦掵","挬挗揝掦揦挽挜捒接揈掲挛掃授指掁") + _loc4_);
         }
         this._a6aa59aa47e68880c969ebcd.tooltipText = _loc6_.join(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捂掝揍揢捉捆挐挀振探","掾掃揓捝揾捧掁挙挫挤掰推掐掔捑捹"));
      }
   }
}

