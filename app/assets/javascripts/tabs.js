$(document).ready(function (){
    
    $('.tabs li a').click(function (e) {
        e.preventDefault();
        var $tab = $(this).parent();
        var $other_tabs = $tab.siblings();
        var tab_content = $(this).attr("href");
        $('.tab').hide();
        $(tab_content).show();
        $tab.addClass('active');
        $other_tabs.removeClass('active');
    });
});
