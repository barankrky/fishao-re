package com.ax3.fishao.view.dialogs.club.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   
   public class _8a55e6919385386ebc54f870
   {
      
      private var _db45b1552a0749309599d8e7:int;
      
      private var _name:String;
      
      private var _037f5561cd45903bcdac993d:int;
      
      private var _28787e3e586d70b8d2df887e:String;
      
      private var _2f3456dbf1aee1c96ea67eb0:String;
      
      public function _8a55e6919385386ebc54f870()
      {
         super();
      }
      
      public function get ID() : int
      {
         return this._db45b1552a0749309599d8e7;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get emblemID() : int
      {
         return this._037f5561cd45903bcdac993d;
      }
      
      public function get leaderLogin() : String
      {
         return this._28787e3e586d70b8d2df887e;
      }
      
      public function get type() : String
      {
         return this._2f3456dbf1aee1c96ea67eb0;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._db45b1552a0749309599d8e7 = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劚刎剦劻勒勍勨剙勴劯刿劧","剼劂勽务剼勬劭勲勜剦分刄劋助刬剛"));
         this._name = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၐု႒Ⴤႇ჈မტႉငႼႢိႭၽფ","႖ႩჴၓႸჱၸႀჸოႈစၔიღ၄"));
         this._037f5561cd45903bcdac993d = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႰရႝკဠႬႇၫვოცႄႶၙဓ႓Ⴁယၝေგ჻ၚရၵၮ","ဵွံႇၸჟၚဵჍჃဉ႒ႅႝဢႌ"));
         this._2f3456dbf1aee1c96ea67eb0 = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揍揂揑揦捌揖捑掬掷探揮揿揼掩揄揬","捯挝捱掊挺掿挼捊掊捑捏挿揣掹掓揋"));
         this._28787e3e586d70b8d2df887e = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挵挪捲揍捛挩挻捗掦揈揫揚挕捭揢挕挔挥挌掙挧掛捝揑接挩挙掀挱捥揪捬","揢揪振据挏挃掉挜掴揾揅掴捥掂揓掺"));
      }
   }
}

