package com.ax3.fishao.requirements
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   
   public class _d78d60f7c516cc10b117f634 extends _ddb70167c149bc90b647ba30
   {
      
      private var _efe3804f1d352145e8fe4ea8:int;
      
      public function _d78d60f7c516cc10b117f634(param1:int)
      {
         super();
         this._efe3804f1d352145e8fe4ea8 = param1;
      }
      
      override public function get isComplete() : Boolean
      {
         return GameSwf.instance.managerFishes.fishesUserMap[String(this._efe3804f1d352145e8fe4ea8)] != null;
      }
      
      override public function get description() : String
      {
         var _loc1_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_REQUIREMENT_CATCH_FISH);
         return _loc1_.replace(_706c123ff0b2d45829c1bb3e.ESTS_FISH,_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挆捄掔挨捘掖揼捁捖掾揠挪掄换挭揢揠掆","挡掏挓揢挳捖揎挘揖按揮挵挒揪揽掓") + this._efe3804f1d352145e8fe4ea8));
      }
   }
}

