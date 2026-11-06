package com.ax3.fishao.view.states
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.model._5498f2805ab21b5b2ee3fcc9;
   import com.ax3.fishao.vars.app;
   import flash.net.SharedObject;
   
   public class _0c5d7c87ef42d62a09e53b93
   {
      
      public var chatPanelShown:Boolean;
      
      public var chatPanelCookie:SharedObject;
      
      public var chatPanelMessages:Vector.<_5498f2805ab21b5b2ee3fcc9>;
      
      public var chatPanelFolded:Boolean;
      
      public function _0c5d7c87ef42d62a09e53b93()
      {
         super();
         this.chatPanelShown = false;
         this.chatPanelFolded = false;
         this.chatPanelCookie = SharedObject.getLocal(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဘၳ၂Ⴙ႘ရსၼုသႄჿႸჹကၒဴဿဗၭႚ၌ဨ჊ႚჀიၚဋၰ၇ၑၴ჌ၳတေညპဦდဝဖဧჼၗ။Ⴢ","გၻဘၾႠგၓ။ယဌၬၹဠူ႓ၤ") + app.user.username);
         if(this.chatPanelCookie.data.lines == undefined)
         {
            this.chatPanelCookie.data.lines = -608256612 ^ 0x7A0CF369 ^ -1114898214 ^ 0x1C3E4E2C;
            this.chatPanelCookie.flush();
         }
         this.chatPanelMessages = new Vector.<_5498f2805ab21b5b2ee3fcc9>();
      }
   }
}

