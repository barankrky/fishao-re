package com.ax3.fishao.view.dialogs.holidays.model.base
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.debug.Debug;
   
   public class _304106890422442ac0cb20b8
   {
      
      protected var _type:String;
      
      protected var _isActive:Boolean;
      
      protected var _propertiesJson:String;
      
      public function _304106890422442ac0cb20b8()
      {
         super();
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get isActive() : Boolean
      {
         return this._isActive;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         this._isActive = param1;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._4414e1badeb1091f95f49247(param1);
         this._propertiesJson = Debug.getPropertyOrDefault(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掃揆排掁捣捡揶捴揉揎捰掘挒挂挆捃捳挻捔掌掵掷捐掊掐振掃挳","掮捫揽掑挜掫掇揹捡揮捎挂揹揸揟掚"),"");
      }
      
      public function _4414e1badeb1091f95f49247(param1:Object) : void
      {
         this._type = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("換掘挏捈推掯掣捡捙挡捡掘捨捸揥揥","掵接掆捆挓掬握掀掩挏换捯捛揼挔捔"));
         this._isActive = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挻探挀挟掼揥提挷挍捊挀揤掕揦捡指捱损捛挨掇挭換捺掃插","捿挐捿捵挵揁揗揬挝掷捾挎挠揨揌捞"));
      }
      
      protected function _c10f6d26bab509fcc5717163(param1:Object, param2:String) : Array
      {
         var _loc3_:Object = null;
         var _loc4_:_4321d2f9e1f062249cff5e0c = null;
         var _loc5_:Array = [];
         var _loc6_:Array = Debug.assertProperty(param1,param2,Array);
         for each(_loc3_ in _loc6_)
         {
            _loc4_ = new _4321d2f9e1f062249cff5e0c(param2);
            _loc4_.deserialize(_loc3_);
            _loc5_.push(_loc4_);
         }
         return _loc5_;
      }
   }
}

