package com.ax3.fishao.view.dialogs.wheel_of_fortune.model.fish_unlock
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base._60d64d32c61de9fe092aecc7;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base._c09200cfbfabf4d55af08be2;
   
   public class _b30f54e5c1371cc4975d9da8 extends _60d64d32c61de9fe092aecc7
   {
      
      private var _719245cfdcb7bfed6245a40d:int;
      
      public function _b30f54e5c1371cc4975d9da8()
      {
         super();
      }
      
      public function get fishId() : int
      {
         return this._719245cfdcb7bfed6245a40d;
      }
      
      override public function get translationWheel() : String
      {
         var _loc1_:String = "";
         var _loc2_:String = _type;
         switch(_c09200cfbfabf4d55af08be2.EWOFRT_FISH_UNLOCK === _loc2_ ? 0x41B7F0AD ^ 0x7CC9F42D ^ 0x02440910 ^ 0x3F3A0D90 : 0x7DD9E9A3 ^ 0x519492BF ^ 0x44ABDE90 ^ 0x68E6A58D)
         {
            case 0:
               _loc1_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_FISH_UNLOCK);
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဏဨြჷၭႿჿၟႥႿၼၭဝთმ჌ჺဢၲჵႵပဲ၈ၶဖჽ჎ჃႎႅႵႄსထႎႹაႏႀႾ႞ႤჳშဧဧႏჁဩრშჽဎႡჍ၁ၿွၓმၓ်ႏၧဣბျျჯၨဲၣႠწၑႏဌရၞႋႡႊၜჂာჸუჽၱჼვჄၮႨၘჀဟှၞၯၤႧၑჿဗဢჶპဲအႩႳဈღဋပၔბပဋ჎႙၌ဤဨေჿဃ჊႘჈ႋტ၄ဢြ႗ဤၘၑဵဪႋႚႆბႚဍွဨၪႲ჻ဟဿ၀ၤჟအၐ჋კဴႳၸႧჰၫၩၻ၆လჀၖဵ၅ဝႮၮვဿႭ၎႗၈ညჾშ၉ႅ၆ჸ်ၟტၝီ","჋რ჻Ⴚჲဌ၁႐စဧဣႪၙႩဿ၊") + _type);
         }
         return _loc1_;
      }
      
      override public function get translationUserTop() : String
      {
         return _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_USER_TOP_FISH_UNLOCK);
      }
      
      override public function get translationUserBottom() : String
      {
         return _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揣捥捳揶挟揆挀捸揎揓揠掟挢捍捚掱掝捚","掎措挺捞挄掤捆捐捉捉掑揧挏捪揾捈") + this._719245cfdcb7bfed6245a40d);
      }
      
      override public function get imageUrl() : String
      {
         return _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(_67282af25befe9778e5c8dd1.FISH.name,this._719245cfdcb7bfed6245a40d));
      }
      
      override public function _ec8f265d7f3a1a80b3421096(param1:Object) : void
      {
         super._ec8f265d7f3a1a80b3421096(param1);
         this._719245cfdcb7bfed6245a40d = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဿႻბၑစဲၧ႒ႈၰဃရ၆჉ပၣႏၙႩၙႇှ","ၬႴါ႟ိჟ჌ဎၐစဝဉၿႏလဵ"));
      }
   }
}

