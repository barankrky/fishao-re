package com.ax3.fishao.locations.tournaments
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.locations.sublocation._a5e6911f85306c220b8b5d78;
   import com.ax3.fishao.view.dialogs.tournaments.models._2a31502166ae419b5332a782;
   import com.ax3.fishao.view.dialogs.tournaments.models._4a26c3e739ada00470a83032;
   import flash.display.DisplayObject;
   
   public class _12463b7a4f31956d48b752ee
   {
      
      private var _b84c2f014a3a606f4f7ff0a2:Vector.<_9881b2ad51b50089e16374b2> = new Vector.<_9881b2ad51b50089e16374b2>();
      
      private var _eb488e062d4e3c2a3bd27aa9:_2a31502166ae419b5332a782;
      
      public function _12463b7a4f31956d48b752ee(param1:_2a31502166ae419b5332a782)
      {
         var _loc2_:int = 0x44856BE9 ^ -804167178 ^ 0x2D05B434 ^ -1181630933;
         var _loc3_:_9881b2ad51b50089e16374b2 = null;
         super();
         Debug.assertNotEqual(param1,null,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掀捑挿揬揀挠揥揕挒掹採振揦掘掆挃揆捥捪挾揷掉捯挼掀描捿掷掌掑揹挿挪揙揎捻挬捖捳揆挫掍挑揗揿揲捘挼揂挬提挢捼掁捀挟揓捭挚挢掝掹捻揽接揊揳挢捦按捉揣捼掍挬接挓揞捏掽探推捜捈揚挒揨掱挮揎挊捃揋揥捋捁挷揓挏揘挕揸挹挚挟掭捚揃揞捸揍措挤掁掞捍挖掊接揞捋揼掉捛挣揿捍揜揬捪捔掇损揳揱掖挧掝揘挧揇掰掋挲挢揗揷捴揾揲","挳捤挻挤捤掍挥捋捵捤挠揩掖揅揧揋"));
         this._eb488e062d4e3c2a3bd27aa9 = param1;
         var _loc4_:int = 0x54C8C8B2 ^ 0x75A62062 ^ 0x1ECF9AB8 ^ 0x3FA17268;
         while(_loc4_ < (0x684432ED ^ 0x1B5B7023 ^ 0x3BD3FEFD ^ 0x48CCBC30))
         {
            _loc2_ = Math.round(this._eb488e062d4e3c2a3bd27aa9.fishToWinCount / (-1069766704 ^ 0x5EDF9F40 ^ -2127056969 ^ 0x1FD49724) * (_loc4_ + (0x6C7990C3 ^ -2075763607 ^ -260352093 ^ 0x18449B08)));
            _loc3_ = new _9881b2ad51b50089e16374b2(_loc4_,_loc2_);
            this._b84c2f014a3a606f4f7ff0a2.push(_loc3_);
            _loc4_++;
         }
      }
      
      public function process(param1:DisplayObject) : void
      {
         var _loc2_:int = _a5e6911f85306c220b8b5d78._0f3dc57f03793beb3b7ce5aa(param1.name);
         var _loc3_:_9881b2ad51b50089e16374b2 = this._b84c2f014a3a606f4f7ff0a2[_loc2_ - 1];
         _loc3_.process(param1);
      }
      
      public function hitTest(param1:Number, param2:Number, param3:_08c120b706560fce9302bcab) : Boolean
      {
         var _loc4_:_9881b2ad51b50089e16374b2 = null;
         var _loc5_:Boolean = false;
         for each(_loc4_ in this._b84c2f014a3a606f4f7ff0a2)
         {
            if(_loc4_.hitTest(param1,param2) && this._85dec4777bd15fdcbf2ec9a7(_loc4_,param3) == false)
            {
               _loc5_ = true;
            }
         }
         return _loc5_;
      }
      
      private function _85dec4777bd15fdcbf2ec9a7(param1:_9881b2ad51b50089e16374b2, param2:_08c120b706560fce9302bcab) : Boolean
      {
         var _loc3_:_4a26c3e739ada00470a83032 = this._eb488e062d4e3c2a3bd27aa9._368600b8e7f2131bf5cf83af(param2.locationUser.username);
         return _loc3_.criteria >= param1.criteriaValueToOpen;
      }
      
      public function openWall(param1:int) : void
      {
         this._b84c2f014a3a606f4f7ff0a2[param1].open();
      }
      
      public function destroy() : void
      {
         var _loc1_:_9881b2ad51b50089e16374b2 = null;
         for each(_loc1_ in this._b84c2f014a3a606f4f7ff0a2)
         {
            _loc1_.destroy();
         }
         this._b84c2f014a3a606f4f7ff0a2 = null;
      }
   }
}

