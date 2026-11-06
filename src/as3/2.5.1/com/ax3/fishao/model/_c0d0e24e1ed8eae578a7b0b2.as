package com.ax3.fishao.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   
   public class _c0d0e24e1ed8eae578a7b0b2
   {
      
      public var iso2:String;
      
      public var paymentSystemIds:Array = [];
      
      public var language:String = "en";
      
      private var _fd2bffd48760104a81198c32:String;
      
      private var _name:String;
      
      public function _c0d0e24e1ed8eae578a7b0b2(param1:Object)
      {
         super();
         this._fd2bffd48760104a81198c32 = param1.id;
         this.iso2 = param1.iso2;
         if(param1.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勣刴刲勛剛剄剬剮勼则刵刉到刟勍剖勹动利劤剷剫勸勴勚勄剈剔劑劬劌勑刌劮勋刦加動刟劳劘勹刟勠","剹勼剿劈剱刋削効劾劑劣删剧務勵勴")) && param1.payment_system_ids != "")
         {
            this.paymentSystemIds = String(param1.payment_system_ids).split(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揰掯掋捱挫揤挦揬挚挻","掭挓捅揪挊挾捴掫揘捒掦捘捠揻排揿"));
         }
         if(param1.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挥捞挢挄揦捭捓揸捝挷捎掿掣挝揘揕捯挿挽挑捕捎捹揶","挛揲捍掔採揺捍捚掜捾揉挎掖掄揘換")))
         {
            this.language = param1.language;
         }
      }
      
      public function get name() : String
      {
         return _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勍劧剒剥勈劮剪刋刭剴劼劓刁剋劊剋劔刺剻刂勉劲努列","刖削刕剢勝功剞募判剷勧勧勏劏功劣") + this.id);
      }
      
      public function get id() : String
      {
         return this._fd2bffd48760104a81198c32;
      }
   }
}

