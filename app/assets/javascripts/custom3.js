// jQuery Initialization
jQuery(document).ready(function($){
"use strict"; 

      /* Testimonials ticker function call */ 
         $('.ticker_fade').list_ticker({
          speed:4000,
          effect:'fade'
        });

});

/* Set the width of the side navigation to 250px and the left margin of the page content to 250px */
function openNav() {
    document.getElementById("mySidenav").style.width = "30%";
    document.getElementById("push-content").style.marginLeft = "30%";
}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0 */
function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("push-content").style.marginLeft = "0";
}

/* Set the width of the side navigation to 250px and the left margin of the page content to 250px */
function openhomiesNav() {
    document.getElementById("myHomiesnav").style.width = "30%";
    document.getElementById("push-content").style.marginLeft = "30%";
}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0 */
function closehomiesNav() {
    document.getElementById("myHomiesnav").style.width = "0";
    document.getElementById("push-content").style.marginLeft = "0";
}

/* Set the width of the side navigation to 250px and the left margin of the page content to 250px */
function opencaterersNav() {
    document.getElementById("myCaterersnav").style.width = "30%";
    document.getElementById("push-content").style.marginLeft = "30%";
}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0 */
function closecaterersNav() {
    document.getElementById("myCaterersnav").style.width = "0";
    document.getElementById("push-content").style.marginLeft = "0";
}
