package com.ax3.net
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   
   public class _8546382b9573012b659f03ff
   {
      
      public var name:String;
      
      protected var _loaded:Boolean;
      
      protected var _item:Object;
      
      public function _8546382b9573012b659f03ff(param1:String, param2:Object = null)
      {
         super();
         this.name = param1;
         this._item = param2;
      }
      
      public function isLoaded() : Boolean
      {
         return Boolean(this._item) && this._loaded;
      }
      
      public function set loaded(param1:Boolean) : void
      {
         this._loaded = param1;
      }
      
      public function get item() : Object
      {
         return this._item;
      }
      
      public function set item(param1:Object) : void
      {
         this._item = param1;
      }
      
      public function toString() : String
      {
         return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၎მယპႱႻ႓ရဠၪ၍ჸၔၙჄცၫၠ႔ჭსზ႐ဪჩူၹၰႬႉდოჴႭသჲၟၓဆ၅မდ","ჄၫၥწჲႸဗႴ჻ၜშ၄ၫჲဆဵ") + this.name + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捤提捫捜挢掱挛描揰揈","揷揿掷採挥捻掍掶捵捅掚捩掰控捩捪");
      }
   }
}

