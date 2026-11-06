package com.ax3
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.events._b8cf18222865bdcc29af1c94;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.utils.StaticCharacterViewMethods;
   import com.ax3.net._f5d3c19b4de5df055d1bc952;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class _e8ea037991976507721e4dea extends EventDispatcher
   {
      
      private var _37ca22e85e8f9f7ba32945c8:_f5d3c19b4de5df055d1bc952;
      
      private var _a580f60c1c2c4aa1ccfc46c4:MovieClip;
      
      private var _787df091c325d414a0134841:MovieClip;
      
      private var _7a79f19c982128ad6ca2acf1:MovieClip;
      
      private var _3c63a75d005917f5b919d6e2:Boolean = false;
      
      private var _0299062227009bf174cfee11:Boolean = false;
      
      public function _e8ea037991976507721e4dea(param1:String)
      {
         super();
         this._37ca22e85e8f9f7ba32945c8 = new _f5d3c19b4de5df055d1bc952(0x412F8C2F ^ 0x52547694 ^ 0x36200B7E ^ 0x255BF1C6);
         this._37ca22e85e8f9f7ba32945c8.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onComplete);
         this._37ca22e85e8f9f7ba32945c8.addEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
         this._37ca22e85e8f9f7ba32945c8.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         this._0299062227009bf174cfee11 = true;
         this._37ca22e85e8f9f7ba32945c8.load(new URLRequest(param1),new LoaderContext(false,ApplicationDomain.currentDomain));
      }
      
      public function get progress() : Number
      {
         return this._37ca22e85e8f9f7ba32945c8.isLoaded() ? 0x7DED6826 ^ 0x7F4D039A ^ -828472820 ^ -868292175 : (this._37ca22e85e8f9f7ba32945c8.bytesTotal > (-539141775 ^ -1278431441 ^ -885417145 ^ -1490522855) ? this._37ca22e85e8f9f7ba32945c8.bytesLoaded / this._37ca22e85e8f9f7ba32945c8.bytesTotal : -2132806198 ^ -425072981 ^ 0x086141BF ^ 0x6E1752DE);
      }
      
      private function onIoError(param1:IOErrorEvent) : void
      {
         this._0299062227009bf174cfee11 = false;
         GameSwf.globalDispatcher.dispatchEvent(new _b8cf18222865bdcc29af1c94(_b8cf18222865bdcc29af1c94.ASSET_LOAD_ERROR,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揑揹掞挑揋揚捽掘握揈捠捁掙捶挛捧掲捕挸提掛捰捷据损掸揄挙挄掮掚揢挒捶揘捴揱挸掮按揀揇挭推揬捕授揷推捸掷掂掬掗捝揂揥揪掬挳捘掣挙揅捠揗掍接揾捜捘挗揂掀捷捎","挩挈捋挼揚挖按挳掭捄换換挙挆掃揎") + param1.text + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勳勝勆劳勷刞刹勼勴勤刡勰","勤剧劮剦勮勣劁前勽刀列刌勪券刽勒") + this._37ca22e85e8f9f7ba32945c8?.url + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刦劖判劶励勘刾剎勿刁","剥刿劉劌剾劃刁剰劕勃劧刊剹刵劎刽")));
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         this._0299062227009bf174cfee11 = false;
         GameSwf.globalDispatcher.dispatchEvent(new _b8cf18222865bdcc29af1c94(_b8cf18222865bdcc29af1c94.ASSET_LOAD_ERROR,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("接揼採挵挺掉挢捀挚捷掯捱揻揌授捵揖掭挅揆捶揤排挻援揈挔掾揣捲捛挩捐掜捘掺掦挨捺挲掲掂挘挬揇掯揆揼挠捫按捍挘揘掄捺掔捺掬捛揺挥掚掇挗掂揔掁捔揭捊挛捣捒挏捾掍挬挗掿捈掼掵捡援掵","捴捹捯捐揽掏捼挐掋捾揰掳揱捳掅挳") + param1.text + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刍剸刹删刟効劓劌刻剹劌募","劅刉勌劏勐刪剥刋勮劽勅剰劽剓劃勖") + this._37ca22e85e8f9f7ba32945c8?.url + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刊剹勛剼勳勽剳剜勴勚","労剕加剆剝副勖勠剐劘勝勹劝刡刏勺")));
      }
      
      private function onComplete(param1:Event) : void
      {
         this._37ca22e85e8f9f7ba32945c8.removeEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
         this._37ca22e85e8f9f7ba32945c8.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         var _loc2_:MovieClip = MovieClip(param1.currentTarget.content);
         this._7a79f19c982128ad6ca2acf1 = MovieClip(_loc2_.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挮捗推揧揞揭掙掾捥挞捥捲換揤揨捯","捙捠挂揺掎指挓掓換掓揸挕捶捖掔捹")));
         this._a580f60c1c2c4aa1ccfc46c4 = MovieClip(_loc2_.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("努剾刘别劝剨剛剌勁刭勦劝剁剠券劖刽剨劋制","劗勮剸劫勎刦刌剻勻劃剱到劑刄創刐")));
         this._0299062227009bf174cfee11 = false;
         this._3c63a75d005917f5b919d6e2 = true;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function _69fb81a266bc16c4357295d0(param1:CharViewConfig) : BitmapData
      {
         if(this._3c63a75d005917f5b919d6e2 == false)
         {
            throw new Error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剨勥利剣劾劼务募劋勅劶制刵勶剴勰努刑劌剹剴刲别剃剙劓劀勶劬劦勣剀剎剟勻剼勑刋劂刃剚劄勪劂剪勽劒剸","劈刬剡勁別剘刽勥剥刄初勩刊剁刱勄"));
         }
         if(param1.body.type == (0x2421A163 ^ 0x0ED40163 ^ 0x237712B8 ^ 0x0982B2B9))
         {
            this._787df091c325d414a0134841 = this._7a79f19c982128ad6ca2acf1;
         }
         else
         {
            this._787df091c325d414a0134841 = this._a580f60c1c2c4aa1ccfc46c4;
         }
         StaticCharacterViewMethods.setPropertyByName(this._787df091c325d414a0134841,CharViewConfig.BODY_NAME,param1.body.color);
         StaticCharacterViewMethods.setPropertyByNumber(StaticCharacterViewMethods.setPropertyByName(this._787df091c325d414a0134841,CharViewConfig.HAT_NAME,param1.hat.type),-790987865 ^ 0x1328E26C ^ 0x08298802 ^ -874835511,param1.hat.color);
         StaticCharacterViewMethods.setPropertyByNumber(StaticCharacterViewMethods.setPropertyByName(this._787df091c325d414a0134841,CharViewConfig.SHOES_NAME,param1.shoes.type),-1833444548 ^ -245695654 ^ 0x0A497E9B ^ 0x69A45EFD,param1.shoes.color);
         StaticCharacterViewMethods.setPropertyByNumber(StaticCharacterViewMethods.setPropertyByName(this._787df091c325d414a0134841,CharViewConfig.SUIT_NAME,param1.suit.type),-1583949890 ^ -1129538227 ^ -1019252481 ^ -570082804,param1.suit.color);
         StaticCharacterViewMethods.setPropertyByNumber(StaticCharacterViewMethods.setPropertyByName(this._787df091c325d414a0134841,CharViewConfig.HAIR_NAME,param1.hair.type),0x3CF8C7E1 ^ -355159922 ^ 0x7C40231A ^ -1435741067,param1.hair.color);
         StaticCharacterViewMethods.setPropertyByNumber(StaticCharacterViewMethods.setPropertyByName(this._787df091c325d414a0134841,CharViewConfig.ICON_NAME,param1.icon.type),0x032884E3 ^ 0x5D35132B ^ 0x6EC3B259 ^ 0x30DE2591,param1.icon.color);
         StaticCharacterViewMethods.setPropertyByNumber(StaticCharacterViewMethods.setPropertyByName(this._787df091c325d414a0134841,CharViewConfig.UPPER_CLOTHES_NAME,param1.upperClothes.type),0x412D97A1 ^ -507011694 ^ -763495818 ^ 0x7297F045,param1.upperClothes.color);
         StaticCharacterViewMethods.setPropertyByNumber(StaticCharacterViewMethods.setPropertyByName(this._787df091c325d414a0134841,CharViewConfig.LOWER_CLOTHES_NAME,param1.lowerClothes.type),-1569409385 ^ -804325236 ^ 0x508B1892 ^ 0x22F15689,param1.lowerClothes.color);
         var _loc2_:BitmapData = new BitmapData(-1852181990 ^ 0x244E015A ^ 0x6D777953 ^ -660567165,0x2E97B7A2 ^ -1016983179 ^ 0x796B0D05 ^ -1801540830,true,-589986183 ^ 0x70935437 ^ 0x121BD236 ^ -1101201288);
         if(this._787df091c325d414a0134841 != null)
         {
            _loc2_.draw(this._787df091c325d414a0134841);
         }
         this._787df091c325d414a0134841 = null;
         return _loc2_;
      }
      
      public function get isLoaded() : Boolean
      {
         return this._3c63a75d005917f5b919d6e2;
      }
      
      public function get isLoading() : Boolean
      {
         return this._0299062227009bf174cfee11;
      }
   }
}

