package com.ax3.fishao.display.panels
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.view.wrappers._ec615a950cd1fd583101e44a;
   import flash.display.MovieClip;
   
   public class _a6816d8c6262739dbd73ec1e
   {
      
      private var _3967a59923c05e778b08d6f4:MovieClip;
      
      public var counterclockwise:_ec615a950cd1fd583101e44a;
      
      public var clockwise:_ec615a950cd1fd583101e44a;
      
      public var confirmPlacing:_ec615a950cd1fd583101e44a;
      
      public var removeItem:_ec615a950cd1fd583101e44a;
      
      public function _a6816d8c6262739dbd73ec1e()
      {
         super();
      }
      
      public function init(param1:MovieClip) : void
      {
         this._3967a59923c05e778b08d6f4 = param1;
         param1.mouseEnabled = false;
         param1.mouseChildren = true;
         this.clockwise = new _ec615a950cd1fd583101e44a();
         this.clockwise.process(param1.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ကჺၒჳဪဆႡჾၺၾ႟သ။ၖ჊თგႨႋჰႎႲნ၅ဆၞ჆ၿေႊႊၣၡႼံၬႹპ","ဎჩ၀ႏလၿႅ႙သზဲၭცႛွတ")));
         this.counterclockwise = new _ec615a950cd1fd583101e44a();
         this.counterclockwise.process(param1.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揓揭挰按挜挑揇揺捨挐揱捜捥揜揻揨掭掠揯揣掬揺挂捧掴接揊掩挘揪捸挕掱挗挩掎揭掝捌揫揤据捛损挏排掩揗揥挗揔揋","捦掇捔掤揣掰挅揺捨挳揖捞捜捤揞挗")));
         this.confirmPlacing = new _ec615a950cd1fd583101e44a();
         this.confirmPlacing.process(param1.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揵捚挤捧挴揕挲控捅捍揀挍揆捷捰掙挂揜捡揁掭揽捧挣挣捌捍掎指挘掫掛捵挅掬掠","捬揭捠掰揺捐揊掿揨掽揕挣捛揎捒掫")));
         this.confirmPlacing.customClickSound = _3a8a2602dcf9bf49b62e62af.SFX_050_UI_Select_item;
         this.removeItem = new _ec615a950cd1fd583101e44a();
         this.removeItem.process(param1.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႌဎဍဇႧႾ႐၇၈ხဿმၓႛჄ။Ⴝჶကბ၄ႉႱႿ္ႴႂဓဿဓႭၧ჆ჵ၀Ⴑ","უზရჼღრ႗ၼბ႒ჴဨဋႂ႒ံ")));
         this.removeItem.customClickSound = _3a8a2602dcf9bf49b62e62af.SFX_050_UI_Select_item;
      }
      
      public function show() : void
      {
         this._3967a59923c05e778b08d6f4.visible = true;
      }
      
      public function hide() : void
      {
         this._3967a59923c05e778b08d6f4.visible = false;
      }
      
      public function moveTo(param1:int, param2:int) : void
      {
         this._3967a59923c05e778b08d6f4.x = param1;
         this._3967a59923c05e778b08d6f4.y = param2;
      }
      
      public function get width() : Number
      {
         return this._3967a59923c05e778b08d6f4.width;
      }
      
      public function get height() : Number
      {
         return this._3967a59923c05e778b08d6f4.height;
      }
   }
}

