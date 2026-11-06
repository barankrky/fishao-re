package com.ax3.fishao.view.dialogs.events.controllers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.UtilsString;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.events.model._9d2dc0500fb727297903d3c5;
   import com.ax3.fishao.view.dialogs.events.views._dcda14caf4d8aad3f24c11f3;
   import protocol.api.events.data.EventMemberInfo;
   
   public class _dad0cfb157a8f750b2566b32 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _109d1299d5d2b9ab7b5f7d7c:_dcda14caf4d8aad3f24c11f3 = new _dcda14caf4d8aad3f24c11f3(this);
      
      private var _bf08552fbffffe634ae9e5f3:EventMemberInfo;
      
      private var _2180e7fcebdf9af9b4d1ca52:Boolean;
      
      public function _dad0cfb157a8f750b2566b32(param1:EventMemberInfo)
      {
         this._bf08552fbffffe634ae9e5f3 = Debug.assertNotEqual(param1,null);
         super(this._109d1299d5d2b9ab7b5f7d7c);
         this.init();
      }
      
      public function get isCurrent() : Boolean
      {
         return this._2180e7fcebdf9af9b4d1ca52;
      }
      
      private function init() : void
      {
         var _loc1_:int = -1007960008 ^ -611019921 ^ 0x313A67A7 ^ 0x294534F0;
         this._2180e7fcebdf9af9b4d1ca52 = app.user.username == this._bf08552fbffffe634ae9e5f3.login;
         var _loc2_:String = GameSwf.instance.managerEvents.eventCurrent.type;
         if(_loc2_ == _9d2dc0500fb727297903d3c5.EET_CATCH_BIGGEST_FISH || _loc2_ == _9d2dc0500fb727297903d3c5.EET_CATCH_BIGGEST_FISH_WITH_TYPE)
         {
            this._109d1299d5d2b9ab7b5f7d7c.criteria = _c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(this._bf08552fbffffe634ae9e5f3.criteria);
         }
         else
         {
            this._109d1299d5d2b9ab7b5f7d7c.criteria = this._bf08552fbffffe634ae9e5f3.criteria.toString();
         }
         if(_loc2_ == _9d2dc0500fb727297903d3c5.EET_CATCH_BIGGEST_FISH)
         {
            if(this._bf08552fbffffe634ae9e5f3.getAdditionalProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捵指捘挜掘掑揶捵捽揹挺排揀掋捫挙揿捝捡掟指捯","捃揣挵捬捂捭捲揮掎掳掲捊揺挐揯揙")).length)
            {
               _loc1_ = parseInt(this._bf08552fbffffe634ae9e5f3.getAdditionalProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掘換揩揍捍挂排掆揉採掰捗揙捉揨捶揝揽挢捇损挧","揸揙揦採挎捸措挽捆捘挲挽捔掎挜捤")));
               this._109d1299d5d2b9ab7b5f7d7c.fish = UtilsString.limitCharCount(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勺劐刔列剓刐割剠刼剸剀割剄剴勪剄劚勌","剹劆劫勧剦创勏剅劏勋劾刊剺勤力刺") + _loc1_),-815300563 ^ -1382940206 ^ -1476604417 ^ -989246445,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ုၙ၉჌ჳႯဦွုႫ်Ⴉ","ဢႰႊ၀ႉ႗თႵჭლႠရႍႜ၆Ⴋ"));
               this._109d1299d5d2b9ab7b5f7d7c.displayFishnameColumn = true;
            }
         }
         else
         {
            this._109d1299d5d2b9ab7b5f7d7c.displayFishnameColumn = false;
         }
         this._109d1299d5d2b9ab7b5f7d7c.name = this._bf08552fbffffe634ae9e5f3.login;
         this._109d1299d5d2b9ab7b5f7d7c.position = this._bf08552fbffffe634ae9e5f3.position;
         if(this._bf08552fbffffe634ae9e5f3.rewardFishbucks > (0x7C3D53B8 ^ -1339595292 ^ 0x79C75E1E ^ -1243781054))
         {
            this._109d1299d5d2b9ab7b5f7d7c.rewardFishbucks = this._bf08552fbffffe634ae9e5f3.rewardFishbucks;
         }
         else if(this._bf08552fbffffe634ae9e5f3.rewardFishcoins > (0x43ADFE7E ^ -249307300 ^ 0x7458EE63 ^ -959000767))
         {
            this._109d1299d5d2b9ab7b5f7d7c.rewardFishcoins = this._bf08552fbffffe634ae9e5f3.rewardFishcoins;
         }
         this._109d1299d5d2b9ab7b5f7d7c.isCurrent = this._2180e7fcebdf9af9b4d1ca52;
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._109d1299d5d2b9ab7b5f7d7c = null;
         this._bf08552fbffffe634ae9e5f3 = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

