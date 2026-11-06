package com.ax3.fishao.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.junkbyte.console.Cc;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class _3ef14f9cf1f00a99b8abf756
   {
      
      private var _8bb97b4207c57b6d802dee73:Object = {};
      
      public function _3ef14f9cf1f00a99b8abf756(param1:String)
      {
         super();
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest(param1);
         _loc2_.addEventListener(Event.COMPLETE,this._6dd890c36b93c27ef2d7697e);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this._9d26ef7be0e138eea7d82538);
         _loc2_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         _loc2_.load(_loc3_);
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         var _loc2_:URLLoader = URLLoader(param1.target);
         this._65d8d035a148ebc9c319c97c(_loc2_);
         Cc.error(this,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႆဒၰှႹႲႸც჉ဳၰႶႱႬ၊ჱညဠၜႧႪၽၞႊဘႫၸჴၪဃဝႜდႦ႕၂჆္ჟჸ","უႧန႓ဈၔတჴၞ႐ၜဋၗၪၕဏ"),param1.text);
      }
      
      private function _9d26ef7be0e138eea7d82538(param1:IOErrorEvent) : void
      {
         var _loc2_:URLLoader = URLLoader(param1.target);
         this._65d8d035a148ebc9c319c97c(_loc2_);
         Cc.error(this,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挣揶捇揽揵掣揆揎挶挰揈捚掞按掄捖捗捣接挙挕掾挀揋捅揃捧掱","揵揬挛揓挖提挏揩掇揧揇揆挕揭授揬"),param1.text);
      }
      
      private function _6dd890c36b93c27ef2d7697e(param1:Event) : void
      {
         var _loc2_:URLLoader = URLLoader(param1.target);
         this._65d8d035a148ebc9c319c97c(_loc2_);
         this._8bb97b4207c57b6d802dee73 = JSON.parse(_loc2_.data);
      }
      
      private function _65d8d035a148ebc9c319c97c(param1:URLLoader) : void
      {
         param1.addEventListener(Event.COMPLETE,this._6dd890c36b93c27ef2d7697e);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this._9d26ef7be0e138eea7d82538);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
      }
      
      public function get getAll() : Object
      {
         return this._8bb97b4207c57b6d802dee73;
      }
      
      public function _1d9ef24ac243dae717d7b74d(param1:String = null) : Array
      {
         var _loc2_:String = null;
         var _loc3_:Array = [];
         if(param1 != null)
         {
            if(this._8bb97b4207c57b6d802dee73.hasOwnProperty(param1))
            {
               for(_loc2_ in this._8bb97b4207c57b6d802dee73[param1])
               {
                  _loc3_.push(_loc2_.replace(new RegExp(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勓募刀判切劰劏劏判务","劼刽劄刋劜勰剽劍勴削勧劘劊労勮劦"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჺႬဲნჍဘဿვრ႘","႗၀ၡၿေတဂ႔ဲရႯွႎႂၡႮ")),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剥剴剹劵刿劎勽助剽剧","勗勪判勾勒剸剓办刱副勃勲勏刲力刓")));
               }
               _loc3_.sort();
            }
         }
         else
         {
            for(_loc2_ in this._8bb97b4207c57b6d802dee73)
            {
               _loc3_.push(_loc2_.replace(new RegExp(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劻創劏刞劳劬創势刻制","勻刯加制剸勴勐勐判劜勈副勇勋刕劀"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勺剁剗劦剳劄劤勛判劂","剆勌劃剖劓勂勆力剉刬勱剳剂剬剒刞")),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捚捭排持揹揀挻揧掠揮","挒挨损揞挝捶掴挎捙揲据捽掂換掉掚")));
            }
            _loc3_.sort();
         }
         return _loc3_;
      }
      
      public function _dcc56175ccf5faa930b1794c(param1:String, param2:String) : String
      {
         if(this._8bb97b4207c57b6d802dee73.hasOwnProperty(param1) && Boolean(this._8bb97b4207c57b6d802dee73[param1].hasOwnProperty(param2)))
         {
            return this._8bb97b4207c57b6d802dee73[param1][param2];
         }
         return null;
      }
   }
}

