package com.ax3.utils.sound
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   
   public class _c5aa52fca149ae6f0be6dc5b
   {
      
      public static var loadOnCreation:Vector.<_c5aa52fca149ae6f0be6dc5b> = new Vector.<_c5aa52fca149ae6f0be6dc5b>();
      
      public static var all:Vector.<_c5aa52fca149ae6f0be6dc5b> = new Vector.<_c5aa52fca149ae6f0be6dc5b>();
      
      public var source:Object;
      
      public var group:Object;
      
      public var type:_bd01d2c8f29f01fb2ee03db5;
      
      public var params:Object;
      
      public var name:String;
      
      public function _c5aa52fca149ae6f0be6dc5b(param1:String, param2:Object, param3:Object = null, param4:Boolean = false, param5:_bd01d2c8f29f01fb2ee03db5 = null, param6:Object = null)
      {
         super();
         this.name = param1;
         this.source = param2;
         this.group = param3;
         this.params = param6;
         if(param5 == null)
         {
            param5 = _bd01d2c8f29f01fb2ee03db5.DEFAULT;
         }
         this.type = param5;
         if(param4)
         {
            loadOnCreation.push(this);
         }
         all.push(this);
      }
      
      public function toString() : String
      {
         return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揙挐揾捑援挾掐捛揰挆揶捓授掹捋掺挩掮掄持掋揌挴捿換揅挭掂掞掺","揚掖掊揑掫插掦挫掠挱捑挱挄掅揃捵") + this.name + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("办刢刹剾剭劮办勀勋劖","勆剙刵勠勘劊前刓勵勗刘勝劊劳删勱");
      }
   }
}

