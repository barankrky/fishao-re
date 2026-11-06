package com.ax3.fishao.locations.items.model
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import flash.geom.Point;
   
   public class _4aa243954966c493c452eb64
   {
      
      private var _8416b24649704fed9614f4fe:int;
      
      private var _47088564766777c61525f879:int;
      
      private var _987c8570cad0087180216991:Point;
      
      private var _367ecf6fd3212e131a95a34d:Point;
      
      public function _4aa243954966c493c452eb64(param1:int = 0, param2:int = 0, param3:Point = null, param4:Point = null)
      {
         super();
         this._8416b24649704fed9614f4fe = param1;
         this._47088564766777c61525f879 = param2;
         this._987c8570cad0087180216991 = param3;
         this._367ecf6fd3212e131a95a34d = param4;
      }
      
      public function get resourceType() : int
      {
         return this._8416b24649704fed9614f4fe;
      }
      
      public function get resourceId() : int
      {
         return this._47088564766777c61525f879;
      }
      
      public function get position() : Point
      {
         return this._987c8570cad0087180216991;
      }
      
      public function get positionOriginal() : Point
      {
         return this._367ecf6fd3212e131a95a34d;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._8416b24649704fed9614f4fe = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剠勖到刴勞剣助勅勥刉刼剡剅劢刀勭剓勵劰劬務分刃勛刃剕劻勭刋劀勍劐勆勓","劜加刲勍剷剣勫刌勈劫勼刳劬動剻剕"),int);
         this._47088564766777c61525f879 = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勊剌剒勸劧劁勄剎勆効刴剨劈剭剸刯勏剛別刲刹勪刭勺勧功勃剕劺勑","剨剶剈剨务刚刺动刣勳刐刁勖劆剕刣"),int);
         var _loc2_:int = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刎勒勛劖勑刃勰劫劁別","勠勜劕剄創勂劥剻刀刴剝剴制刯勤划"),int);
         var _loc3_:int = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("။၆ႇါფၶွယეၹ","ႁიၨဘ႞ငჺၲჯႢ၊ဘႄှၽႰ"),int);
         this._987c8570cad0087180216991 = new Point(_loc2_,_loc3_);
      }
   }
}

