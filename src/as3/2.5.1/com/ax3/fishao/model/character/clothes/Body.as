package com.ax3.fishao.model.character.clothes
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.model.character.Clothes;
   
   public class Body extends Clothes
   {
      
      public function Body(param1:int, param2:int)
      {
         super(param1,param2);
         name = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刳勨劋剀削剻劭勭削劎勹初刕剁劵剕","剠劐办剅労剦刟勶創判剒勬勨劐剞剏");
      }
      
      public static function fromObject(param1:Object) : Body
      {
         return new Body(param1.type,param1.color);
      }
      
      public function toString() : String
      {
         return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掌揭捲挊挎捱掛挠掼捩挔揌挀揽挻挃挘损掰揌控捳挂揜掂掝掑掿揲挞","揹捷挋揨揜挝捇掦捉捶掚揄捲揆揥揭") + type + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劧剼劋劗勲劦劔削勮剅努剖勏刊剰刹力勜勧势则刜刕劊刿剟","劤剿剮募劇劀助勰勴刍勼勩劇募剧劮") + color + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劅刿勷剴劸剚剡则剹勦","刣剃勜勿劌劈剦剙刴初勃劙劊勜勖劏");
      }
   }
}

