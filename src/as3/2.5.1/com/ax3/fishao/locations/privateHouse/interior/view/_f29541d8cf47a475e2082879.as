package com.ax3.fishao.locations.privateHouse.interior.view
{
   import com.ax3.fishao.locations.privateHouse.interior.model._92a02af1a67b5d02208e6348;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import flash.display.DisplayObjectContainer;
   
   public class _f29541d8cf47a475e2082879 extends _94cc81c5cf19422705d8598d
   {
      
      private var _b93c1f30807040816fa93a09:_ca860c9b8294f76380913c65;
      
      private var _b87767de7175f561de983b7b:_ca860c9b8294f76380913c65;
      
      private var _771c4a8d186136460ea7e599:_ca860c9b8294f76380913c65;
      
      private var _9e91c7b063128a237c155138:_ca860c9b8294f76380913c65;
      
      private var _542187ddf19692365143a38b:String;
      
      private var _b7e310509b7ed4518a01bb9a:_ca860c9b8294f76380913c65;
      
      public function _f29541d8cf47a475e2082879(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1);
         this.init();
      }
      
      public function get currentRotation() : String
      {
         return this._542187ddf19692365143a38b;
      }
      
      public function set currentRotation(param1:String) : void
      {
         this._542187ddf19692365143a38b = param1;
         this._7e726cd132bacdedcb32989d();
      }
      
      public function get currentView() : _ca860c9b8294f76380913c65
      {
         return this._b7e310509b7ed4518a01bb9a;
      }
      
      public function set handleClick(param1:Boolean) : void
      {
         this._b93c1f30807040816fa93a09.handleClick = param1;
         this._b87767de7175f561de983b7b.handleClick = param1;
         this._771c4a8d186136460ea7e599.handleClick = param1;
         this._9e91c7b063128a237c155138.handleClick = param1;
      }
      
      public function set filter(param1:String) : void
      {
         this._b7e310509b7ed4518a01bb9a.filter = param1;
      }
      
      public function get widthMax() : Number
      {
         return Math.max(this._b93c1f30807040816fa93a09.width,this._b87767de7175f561de983b7b.width,this._771c4a8d186136460ea7e599.width,this._9e91c7b063128a237c155138.width);
      }
      
      private function init() : void
      {
         this._b93c1f30807040816fa93a09 = new _ca860c9b8294f76380913c65(controller,_92a02af1a67b5d02208e6348.EIIR_BACK);
         this._b87767de7175f561de983b7b = new _ca860c9b8294f76380913c65(controller,_92a02af1a67b5d02208e6348.EIIR_FRONT);
         this._771c4a8d186136460ea7e599 = new _ca860c9b8294f76380913c65(controller,_92a02af1a67b5d02208e6348.EIIR_LEFT);
         this._9e91c7b063128a237c155138 = new _ca860c9b8294f76380913c65(controller,_92a02af1a67b5d02208e6348.EIIR_RIGHT);
      }
      
      override public function load() : void
      {
         this._b93c1f30807040816fa93a09.load();
         this._b87767de7175f561de983b7b.load();
         this._771c4a8d186136460ea7e599.load();
         this._9e91c7b063128a237c155138.load();
      }
      
      override public function _0ad9c1fdb902a66dc9200334(param1:DisplayObjectContainer) : void
      {
         this._b93c1f30807040816fa93a09._0ad9c1fdb902a66dc9200334(param1);
         this._b87767de7175f561de983b7b._0ad9c1fdb902a66dc9200334(param1);
         this._771c4a8d186136460ea7e599._0ad9c1fdb902a66dc9200334(param1);
         this._9e91c7b063128a237c155138._0ad9c1fdb902a66dc9200334(param1);
      }
      
      override public function _2470e86c95bcc4626cc127cf(param1:DisplayObjectContainer) : void
      {
         this._b93c1f30807040816fa93a09._2470e86c95bcc4626cc127cf(param1);
         this._b87767de7175f561de983b7b._2470e86c95bcc4626cc127cf(param1);
         this._771c4a8d186136460ea7e599._2470e86c95bcc4626cc127cf(param1);
         this._9e91c7b063128a237c155138._2470e86c95bcc4626cc127cf(param1);
      }
      
      private function _7e726cd132bacdedcb32989d() : void
      {
         this._b93c1f30807040816fa93a09.hide();
         this._b87767de7175f561de983b7b.hide();
         this._771c4a8d186136460ea7e599.hide();
         this._9e91c7b063128a237c155138.hide();
         switch(this._542187ddf19692365143a38b)
         {
            case _92a02af1a67b5d02208e6348.EIIR_BACK:
               §§push(-848201959 ^ -1935416757 ^ 0x483E65EF ^ 0x09ECF0BD);
               break;
            case _92a02af1a67b5d02208e6348.EIIR_FRONT:
               §§push(-1019773008 ^ -1314108232 ^ -1589573 ^ -1921217102);
               break;
            case _92a02af1a67b5d02208e6348.EIIR_LEFT:
               §§push(-862732148 ^ -1352783954 ^ 0x54459940 ^ 0x37887E60);
               break;
            case _92a02af1a67b5d02208e6348.EIIR_RIGHT:
               §§push(-1345606977 ^ -337743603 ^ 0x33C2E120 ^ 0x77D73A91);
               break;
            default:
               §§push(0x5965A35E ^ -71657934 ^ 0x14DF297E ^ -1241506794);
         }
         switch(§§pop())
         {
            case 0:
               this._b7e310509b7ed4518a01bb9a = this._b93c1f30807040816fa93a09;
               break;
            case 1:
               this._b7e310509b7ed4518a01bb9a = this._b87767de7175f561de983b7b;
               break;
            case 2:
               this._b7e310509b7ed4518a01bb9a = this._771c4a8d186136460ea7e599;
               break;
            case 3:
               this._b7e310509b7ed4518a01bb9a = this._9e91c7b063128a237c155138;
         }
         this._b7e310509b7ed4518a01bb9a.show();
      }
      
      override public function show(param1:Number = 0, param2:Function = null) : void
      {
         this._b7e310509b7ed4518a01bb9a.show();
      }
      
      override public function hide(param1:Number = 0, param2:Function = null) : void
      {
         this._b7e310509b7ed4518a01bb9a.hide();
      }
      
      public function _0f22b0ff67cf444454e16c17() : void
      {
         this._b93c1f30807040816fa93a09._0f22b0ff67cf444454e16c17();
         this._b87767de7175f561de983b7b._0f22b0ff67cf444454e16c17();
         this._771c4a8d186136460ea7e599._0f22b0ff67cf444454e16c17();
         this._9e91c7b063128a237c155138._0f22b0ff67cf444454e16c17();
      }
   }
}

