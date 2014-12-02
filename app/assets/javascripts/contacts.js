//ImportaddressBook code to open gmail and yahoo logins in popup
  var ImportaddressBook ={

    init : function(){
      this.attachEvent();
    },

    attachEvent : function(){
      var _this = this;
      jQuery("#vtabs").tabs({
      });

      jQuery("#gmail,#yahoo,#hotmail").click(function(){
        var provider = jQuery(this).attr("id");
        var url = jQuery(this).attr("data-href");
        _this.import_contacts_popup(url,provider);
      });
    },

    import_contacts_popup : function(url,provider){
      var url = url;
      var called_from =provider;
      var REDIRECT ="/contacts"+called_from+"/contact_callback";
      var win = window.open(url, "windowname1", 'width=800, height=600'); 
      var pollTimer = window.setInterval(function() { 
        try {
          if (win.document.URL.indexOf(REDIRECT) != -1) 
          {  window.clearInterval(pollTimer); }
          else
          { win.document.URL.indexOf("/contacts/failure"); }
        } catch(e) {
        }
      }, 500);
    }

  };


function startLogoutPolling(provider) {
  jQuery('#logoutText_'+provider).hide();
  jQuery('.connect_again_'+provider).hide();
  jQuery('button[name ="another_'+provider+'"]').show();
}


 window.current_dialog = "vtabs";

  $(function() {
    $( "#vtabs" ).tabs();
  });