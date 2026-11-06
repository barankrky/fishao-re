package com.ax3.fishao.view.dialogs.furniture_factory.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.model.info._b258243af15564179d705900;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   
   public class _935e7027b6b8e98015af572a
   {
      
      private var _dfb4bab920df0e79c0f960dc:_b258243af15564179d705900;
      
      private var _afda7fb8ba70e4efad9724b2:String;
      
      private var _450dcddcb6128a55a3799774:int;
      
      private var _c8c3257699d0c7067317998e:String;
      
      private var _f3b74cdfae20a5b2e55d4d5b:String;
      
      public function _935e7027b6b8e98015af572a()
      {
         super();
      }
      
      public function get item() : _b258243af15564179d705900
      {
         return this._dfb4bab920df0e79c0f960dc;
      }
      
      public function get imageUrl() : String
      {
         return this._afda7fb8ba70e4efad9724b2;
      }
      
      public function get rarity() : int
      {
         return this._450dcddcb6128a55a3799774;
      }
      
      public function get translationItem() : String
      {
         return this._c8c3257699d0c7067317998e;
      }
      
      public function get translationRarity() : String
      {
         return this._f3b74cdfae20a5b2e55d4d5b;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._dfb4bab920df0e79c0f960dc = new _b258243af15564179d705900();
         this._dfb4bab920df0e79c0f960dc.deserialize(param1);
         var _loc2_:_67282af25befe9778e5c8dd1 = _67282af25befe9778e5c8dd1._6b751ce98cf8b7017db5d6e6(this._dfb4bab920df0e79c0f960dc.resourceType);
         this._afda7fb8ba70e4efad9724b2 = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(_loc2_.name,this._dfb4bab920df0e79c0f960dc.resourceId));
         var _loc3_:Object = app.privateHouseInteriorItemDict.get(this._dfb4bab920df0e79c0f960dc.resourceId);
         if(_loc3_ != null && _loc3_.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၏Ⴐყ჆ჶ႒Ⴅგჵၛဤၟဇ჆ိჲ႗ဋႣპ","Ⴓျ჎ၗျေၴဆံဝၦႅဧ၁Ⴄဋ")))
         {
            this._450dcddcb6128a55a3799774 = _loc3_.rarity;
         }
         this._c8c3257699d0c7067317998e = _c2ad9d37d7be0097d6d2e977.get(_loc2_.name + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揥挶掶捛挲掜挾揂挶捳","揵挘挑揄挀掝捩捻提挐揹捋掊援揲挻") + this._dfb4bab920df0e79c0f960dc.resourceId);
         this._f3b74cdfae20a5b2e55d4d5b = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_FURNITURE_FACTORY_REWARD_RARITY + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掑掄掼掣挮捘捌揾挭揥","挔掉挹揲捈掞掌掶捼捴掱捡揾掙挕挆") + this._450dcddcb6128a55a3799774);
      }
   }
}

