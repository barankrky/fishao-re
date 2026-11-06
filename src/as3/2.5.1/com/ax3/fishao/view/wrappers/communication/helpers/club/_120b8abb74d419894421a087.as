package com.ax3.fishao.view.wrappers.communication.helpers.club
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.wrappers.communication.helpers.base._a7dc8a3213f2486db7d1e5d8;
   import com.brokenfunction.json.decodeJson;
   
   public class _120b8abb74d419894421a087 extends _a7dc8a3213f2486db7d1e5d8
   {
      
      public function _120b8abb74d419894421a087()
      {
         super();
      }
      
      override public function _a041ffa049d7e26753d6bdbc(param1:String, param2:String) : void
      {
         super._a041ffa049d7e26753d6bdbc(param1,param2);
         var _loc3_:Object = decodeJson(param2);
         var _loc4_:String = Debug.assertProperty(_loc3_,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勬制刯刷勧刾剹劷勯剝劂勨劢剋劇劺劅劍劸劰刣刁勫务","刐刊刯劽劔到利割劳劋劈刑劏刋剿判"));
         var _loc5_:String = _c2ad9d37d7be0097d6d2e977.get(_loc4_);
         var _loc6_:String = Debug.assertProperty(_loc3_,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掇挠捜掯掯描揅挵揮掻掍揵排揃挠捦捑捓揬掵揗挵捱捤掵挐","掎挰揤挦捆挾捐控揭掐揙挝揼接揧掔"));
         _loc5_ = _loc5_.replace(_706c123ff0b2d45829c1bb3e.ESTS_USERNAME,app.user.username);
         _loc5_ = _loc5_.replace(_706c123ff0b2d45829c1bb3e.ESTS_NAME,_loc6_);
         _body = _loc5_;
      }
   }
}

