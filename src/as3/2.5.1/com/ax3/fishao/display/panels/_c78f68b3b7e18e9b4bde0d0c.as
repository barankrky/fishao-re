package com.ax3.fishao.display.panels
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import assets.common.PlingHistoryLine;
   import com.ax3.display.wrappers.impl._bb650418615bc8eb382e5586;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class _c78f68b3b7e18e9b4bde0d0c extends Sprite
   {
      
      private var _357a5ed0bd74c08de54725da:PlingHistoryLine;
      
      private var _6247c3b1fee2422563047711:_73899a4de8f83c8d2c26f545;
      
      private var _6bdaac8811e7db2af3204190:_bb650418615bc8eb382e5586;
      
      public function _c78f68b3b7e18e9b4bde0d0c()
      {
         super();
         this.init();
      }
      
      public function set description(param1:String) : void
      {
         this._6247c3b1fee2422563047711.text = param1;
      }
      
      public function get action() : _bb650418615bc8eb382e5586
      {
         return this._6bdaac8811e7db2af3204190;
      }
      
      private function init() : void
      {
         this._357a5ed0bd74c08de54725da = new PlingHistoryLine();
         addChild(this._357a5ed0bd74c08de54725da);
         this._6247c3b1fee2422563047711 = new _73899a4de8f83c8d2c26f545(Debug.assertProperty(this._357a5ed0bd74c08de54725da,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挑指挭揕挿按挠掴掵揼掠掹揄捉掚捌挲挥捆提按捠","掏揌挞掚捓掌掣振捀挘挀捳挠揄挝掣"),TextField));
         this._6bdaac8811e7db2af3204190 = new _bb650418615bc8eb382e5586();
         this._6bdaac8811e7db2af3204190.process(this._357a5ed0bd74c08de54725da.action);
      }
   }
}

