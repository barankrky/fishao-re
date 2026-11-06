package com.ax3.fishao.tutorial.helpers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.events._8365e76620d1837a83b767d1;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display._8a5b0c698d40931e860c0aeb;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class _450aa236949c3aac4e3c79f5
   {
      
      public function _450aa236949c3aac4e3c79f5()
      {
         super();
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,GameSwf.globalDispatcher,_8365e76620d1837a83b767d1.RESIZE,this._b3c655b16ded936959ea78cd);
      }
      
      public static function _16ffa2fe2c1f35f56de92b5b(param1:Point) : Function
      {
         var size:Point = param1;
         var result:Function = function():Point
         {
            return size;
         };
         return result;
      }
      
      public static function _b151646c414257eefb7e914d(param1:Point, param2:Point = null) : Function
      {
         var result:Function = null;
         var location:_67f8febc099eaa05c48aa41e = null;
         var point:Point = param1;
         var offset:Point = param2;
         location = null;
         location = null;
         if(offset == null)
         {
            var _temp_3:* = §§newactivation();
            var _temp_2:* = §§findproperty(Point);
            var _temp_1:* = -527799656 ^ 0x17CE1783 ^ 0x35A49C44 ^ -1025449633;
            offset = new Point(_temp_1,_temp_1);
         }
         result = function():Point
         {
            var _loc1_:Point = null;
            location = location || GameSwf.currentLocationDialog;
            if(location != null && location.locationLayersBase != null)
            {
               _loc1_ = location.locationLayersBase.localToGlobal(point).add(offset);
            }
            return _loc1_;
         };
         return result;
      }
      
      protected static function _754e2088813c7c737fc97294(param1:Function) : void
      {
         Debug.assert(param1 != null,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揪捪掵挻捞揶捘揱握揔揓捃揰掑揎掩掗挃揈挛掻掍挪捋揪掐指揳揔換揥掍揿掶捞捹挆捺揕捝掎掠挖捜掀掎捺掉推捚捲揕","捒揦挤揄掌挵揀掿掠挷振捗捉掌损挼"));
         Debug.assert(param1() as Point != null,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勬労副刟剝剸剗刢刌劬剤劮劂刀刋勺刧劊劓勆勧刉办剶剜劜劲刷剢剻剑刜勝剾剶剈割则刖刑剷则刡劜劃剫劬劵劂動到勄勣劋划勼勰刀劤刼制勥刋刚劈制勌刎刢勄剭剫劏劏剌勯","前動勃勼刱剞勷剦勯刌剟剣勾券剧剬"));
      }
      
      protected function _b3c655b16ded936959ea78cd(param1:Event) : void
      {
      }
      
      protected function get location() : _67f8febc099eaa05c48aa41e
      {
         return GameSwf.currentLocationDialog;
      }
      
      protected function get gui() : _8a5b0c698d40931e860c0aeb
      {
         var _loc1_:_8a5b0c698d40931e860c0aeb = null;
         if(this.location != null)
         {
            _loc1_ = this.location.gui;
         }
         return _loc1_;
      }
   }
}

